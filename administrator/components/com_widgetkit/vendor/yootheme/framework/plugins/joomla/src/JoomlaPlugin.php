<?php

namespace YOOtheme\Framework\Joomla;

use JAdministratorHelper, JComponentHelper, JDocument, JFactory, JFolder, JURI, JRequest;
use YOOtheme\Framework\Application;
use YOOtheme\Framework\ApplicationAware;
use YOOtheme\Framework\Event\Event;
use YOOtheme\Framework\Plugin\PluginInterface;
use YOOtheme\Framework\Routing\JsonResponse;
use YOOtheme\Framework\Routing\RawResponse;
use YOOtheme\Framework\Routing\Request;
use YOOtheme\Framework\Routing\ResponseProvider;

class JoomlaPlugin extends ApplicationAware implements PluginInterface
{
    /**
    * {@inheritdoc}
    */
    public function load(Application $app, array $config)
    {
        jimport('joomla.filesystem.folder');
        jimport('joomla.application.component.helper');

        $app['db'] = function () {
            return new Database(JFactory::getDBO());
        };

        $app['url'] = function ($app) {
            return new UrlGenerator($app['request'], $app['locator']);
        };

        $app['request'] = function ($app) {

            $baseUrl   = rtrim(JURI::root(false), '/');
            $basePath  = rtrim(strtr(JPATH_ROOT, '\\', '/'), '/');
            $baseRoute = 'index.php';

            if (isset($app['component'])) {
                $baseRoute .= '?option='.$app['component'];
            }

            return new Request($baseUrl, $basePath, $baseRoute);
        };

        $app['response'] = function ($app) {
            return new ResponseProvider($app['url']);
        };

        $app['csrf'] = function () {
            return new CsrfProvider;
        };

        $app['users'] = function ($app) {
            return new UserProvider($app['component'], isset($app['permissions']) ? $app['permissions'] : array());
        };

        $app['option'] = function ($app) {
            return new Option($app['path.cache'], $app['name']);
        };

        $app['locale'] = function($app) {
            return str_replace('-', '_', $app['joomla.language']->get('tag'));
        };

        $app['admin'] = function ($app) {
            return $app['joomla']->isAdmin();
        };

        $app['joomla'] = function () {
            return JFactory::getApplication();
        };

        $app['joomla.config'] = function () {
            return JFactory::getConfig();
        };

        $app['joomla.language'] = function () {
            return JFactory::getLanguage();
        };

        $app['joomla.document'] = function () {
            return JFactory::getDocument();
        };

        $app['joomla.article'] = function () {
            return new ArticleHelper;
        };

        $app->on('boot', array($this, 'boot'));
        $app->on('view', array($this, 'registerAssets'), -10);
    }

    /**
    * Callback for 'boot' event.
    */
    public function boot(Event $event, Application $app)
    {
        if (!is_dir($app['path.cache']) && !JFolder::create($app['path.cache'])) {
            throw new \RuntimeException(sprintf('Unable to create cache folder in "%s"', $app['path.cache']));
        }

        if (isset($app['component'])) {
            $this->registerComponent($app);
        }

        // has "onAfterInitialise" been fired? 'lib_joomla' is being set after the event
        if ($app['joomla.language']->getPaths('lib_joomla')) {
            $this->init();
        } else {
            $app['joomla']->registerEvent('onAfterRoute', array($this, 'init'));
        }

        $app['joomla']->registerEvent('onBeforeRender', function () use ($app) {
            $app->trigger('view', array($app));
        });
    }

    /**
    * Callback to initialize app.
    */
    public function init()
    {
        $this['plugins']->load($this->app);
        $this->app->trigger('init', array($this->app));
    }

    /**
    * Callback to register assets.
    */
    public function registerAssets()
    {
        foreach ($this['styles'] as $style) {
            if ($source = $style->getSource()) {
                $this['joomla.document']->addStyleSheet(htmlentities($this['url']->to($source)));
            } elseif ($content = $style->getContent()) {
                $this['joomla.document']->addStyleDeclaration($content);
            }
        }

        foreach ($this['scripts'] as $script) {
            if ($source = $script->getSource()) {
                $this['joomla.document']->addScript(htmlentities($this['url']->to($source)));
            } elseif ($content = $script->getContent()) {
                $this['joomla.document']->addScriptDeclaration($content);
            }
        }
    }

    /**
    * Registers Joomla component integration.
    */
    protected function registerComponent(Application $app)
    {
        $app['joomla']->registerEvent('onAfterDispatch', function () use ($app) {

            if ($app['component'] !== ($app['admin'] ? JAdministratorHelper::findOption() : $app['joomla']->input->get('option'))) {
                return;
            }

            $response = $app->handle(null, false);

            if ($response->getStatus() != 200) {
                $app['joomla']->setHeader('status', $response->getStatus());
            }

            if ($response instanceof JsonResponse) {
                JRequest::setVar('format', 'json');
                $app['joomla']->loadDocument(JDocument::getInstance('json')->setBuffer((string) $response));
            } elseif ($response instanceof RawResponse) {
                JRequest::setVar('format', 'raw');
                $app['joomla']->loadDocument(JDocument::getInstance('raw')->setBuffer((string) $response));
            } else {
                $app['joomla.document']->setBuffer((string) $response, 'component');
            }

        });
    }
}
