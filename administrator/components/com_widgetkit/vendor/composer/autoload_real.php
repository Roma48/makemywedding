<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit18347eebf448ca03c4ea5e26dc94e451
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('YOOtheme\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        spl_autoload_register(array('ComposerAutoloaderInit18347eebf448ca03c4ea5e26dc94e451', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \YOOtheme\Autoload\ClassLoader();
        spl_autoload_unregister(array('ComposerAutoloaderInit18347eebf448ca03c4ea5e26dc94e451', 'loadClassLoader'));

        $map = require __DIR__ . '/autoload_namespaces.php';
        foreach ($map as $namespace => $path) {
            $loader->set($namespace, $path);
        }

        $map = require __DIR__ . '/autoload_psr4.php';
        foreach ($map as $namespace => $path) {
            $loader->setPsr4($namespace, $path);
        }

        $classMap = require __DIR__ . '/autoload_classmap.php';
        if ($classMap) {
            $loader->addClassMap($classMap);
        }

        $loader->register(true);

        return $loader;
    }
}

function composerRequire18347eebf448ca03c4ea5e26dc94e451($file)
{
    require $file;
}
