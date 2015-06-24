<div class="uk-grid uk-grid-divider uk-form uk-form-horizontal" data-uk-grid-margin>
    <div class="uk-width-medium-1-4">

        <div class="wk-panel-marginless">
            <ul class="uk-nav uk-nav-side" data-uk-switcher="{connect:'#nav-content'}">
                <li><a href="">Switcher</a></li>
                <li><a href="">Content</a></li>
                <li><a href="">General</a></li>
            </ul>
        </div>

    </div>
    <div class="uk-width-medium-3-4">

        <ul id="nav-content" class="uk-switcher">
            <li>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-nav">Navigation</label>
                    <div class="uk-form-controls">
                        <select id="wk-nav" class="uk-form-width-medium" ng-model="widget.data['nav']">
                            <option value="text">Text</option>
                            <option value="lines">Separated Text</option>
                            <option value="nav">Nav</option>
                            <option value="tabs">Tabs</option>
                            <option value="thumbnails">Thumbnails</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav == 'thumbnails'">
                            <label>
                                <select class="uk-form-width-small" ng-model="widget.data['thumbnail_gutter']">
                                    <option value="default">Default</option>
                                    <option value="small">Small</option>
                                </select>
                                Gutter
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav == 'thumbnails'">
                            <label>
                                <select class="uk-form-width-small" ng-model="widget.data['thumbnail_style']">
                                    <option value="none">None</option>
                                    <option value="circle">Circle</option>
                                    <option value="rounded">Rounded</option>
                                    <option value="thumbnail">Thumbnail</option>
                                </select>
                                Style
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav == 'thumbnails'">
                            <label><input class="uk-form-width-mini" type="text" ng-model="widget.data['thumbnail_width']"> Width (px)</label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav == 'thumbnails'">
                            <label><input class="uk-form-width-mini" type="text" ng-model="widget.data['thumbnail_height']"> Height (px)</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-position">Position</label>
                    <div class="uk-form-controls">
                        <select id="wk-position" class="uk-form-width-medium" ng-model="widget.data['position']">
                            <option value="top">Top</option>
                            <option value="bottom">Bottom</option>
                            <option value="left">Left</option>
                            <option value="right">Right</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.position == 'top' || widget.data.position == 'bottom'">
                            <label>
                                <select class="uk-form-width-small" ng-model="widget.data['alignment']">
                                    <option value="left">Left</option>
                                    <option value="center">Center</option>
                                    <option value="right">Right</option>
                                    <option value="justify">Justify (Only Tabs/Thumbnails)</option>
                                </select>
                                Alignment
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.position == 'left' || widget.data.position == 'right'">
                            <label>
                                <select class="uk-form-width-mini" ng-model="widget.data['width']">
                                    <option value="1-5">20%</option>
                                    <option value="1-4">25%</option>
                                    <option value="3-10">30%</option>
                                    <option value="1-3">33%</option>
                                    <option value="2-5">40%</option>
                                    <option value="1-2">50%</option>
                                </select>
                                Width
                            </label>
                        </p>
                    </div>
                </div>

            </li>
            <li>

                <div class="uk-form-row">
                    <span class="uk-form-label">Panel</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['panel']"> Add whitespace to your content.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-animation">Animation</label>
                    <div class="uk-form-controls">
                        <select id="wk-animation" class="uk-form-width-medium" ng-model="widget.data['animation']">
                            <option value="none">None</option>
                            <option value="fade">Fade</option>
                            <option value="scale">Scale</option>
                            <option value="slide-horizontal">Slide Horizontal</option>
                            <option value="slide-left">Slide Left</option>
                            <option value="slide-right">Slide Right</option>
                            <option value="slide-vertical">Slide Vertical</option>
                            <option value="slide-top">Slide Top</option>
                            <option value="slide-bottom">Slide Bottom</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-text-align">Text Align</label>
                    <div class="uk-form-controls">
                        <select id="wk-text-align" class="uk-form-width-medium" ng-model="widget.data['text_align']">
                            <option value="left">Left</option>
                            <option value="right">Right</option>
                            <option value="center">Center</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-title-size">Title Size</label>
                    <div class="uk-form-controls">
                        <select id="wk-title-size" class="uk-form-width-medium" ng-model="widget.data['title_size']">
                            <option value="panel">Default</option>
                            <option value="h1">H1</option>
                            <option value="h2">H2</option>
                            <option value="h3">H3</option>
                            <option value="h4">H4</option>
                            <option value="large">Extra Large</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-media-align">Media Align</label>
                    <div class="uk-form-controls">
                        <select id="wk-media-align" class="uk-form-width-medium" ng-model="widget.data['media_align']">
                            <option value="top">Above Title</option>
                            <option value="bottom">Below Title</option>
                            <option value="left">Left</option>
                            <option value="right">Right</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.media_align == 'left' || widget.data.media_align == 'right'">
                            <label>
                                <select class="uk-form-width-mini" ng-model="widget.data['media_width']">
                                    <option value="1-5">20%</option>
                                    <option value="1-4">25%</option>
                                    <option value="3-10">30%</option>
                                    <option value="1-3">33%</option>
                                    <option value="2-5">40%</option>
                                    <option value="1-2">50%</option>
                                </select>
                                Width
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.media_align == 'left' || widget.data.media_align == 'right'">
                            <label>
                                <select class="uk-form-width-small" ng-model="widget.data['media_breakpoint']">
                                    <option value="small">Phone Landscape</option>
                                    <option value="medium">Tablet</option>
                                    <option value="large">Desktop</option>
                                    <option value="xlarge">Large Screens</option>
                                </select>
                                Breakpoint
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.media_align == 'left' || widget.data.media_align == 'right'">
                            <label><input type="checkbox" ng-model="widget.data['content_align']"> Vertically centered.</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-media-border">Media Border</label>
                    <div class="uk-form-controls">
                        <select id="wk-media-border" class="uk-form-width-medium" ng-model="widget.data['media_border']">
                            <option value="none">None</option>
                            <option value="circle">Circle</option>
                            <option value="rounded">Rounded</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-media-overlay">Media Overlay</label>
                    <div class="uk-form-controls">
                        <select id="wk-media-overlay" class="uk-form-width-medium" ng-model="widget.data['media_overlay']">
                            <option value="none">None</option>
                            <option value="link">Link</option>
                            <option value="social-buttons">Social Buttons</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-link-style">Link</label>
                    <div class="uk-form-controls">
                        <select id="wk-link-style" class="uk-form-width-medium" ng-model="widget.data['link_style']">
                            <option value="none">None</option>
                            <option value="text">Text</option>
                            <option value="button">Button</option>
                            <option value="primary">Button Primary</option>
                            <option value="button-large">Button Large</option>
                            <option value="primary-large">Button Large Primary</option>
                        </select>
                    </div>
                </div>

            </li>
            <li>

                <div class="uk-form-row">
                    <span class="uk-form-label">Display</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <p class="uk-form-controls-condensed">
                            <label><input type="checkbox" ng-model="widget.data['title']"> Show title.</label>
                        </p>
                        <p class="uk-form-controls-condensed">
                            <label><input type="checkbox" ng-model="widget.data['media']"> Show media.</label>
                        </p>
                        <p class="uk-form-controls-condensed">
                            <label><input type="checkbox" ng-model="widget.data['content']"> Show content.</label>
                        </p>
                        <p class="uk-form-controls-condensed">
                            <label><input type="checkbox" ng-model="widget.data['link']"> Show link.</label>
                        </p>
                        <p class="uk-form-controls-condensed">
                            <label><input type="checkbox" ng-model="widget.data['social_buttons']"> Show social buttons.</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-link-text">Link Text</label>
                    <div class="uk-form-controls">
                        <input id="wk-link-text" class="uk-form-width-medium" type="text" ng-model="widget.data['link_text']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-class">HTML Class</label>
                    <div class="uk-form-controls">
                        <input id="wk-class" class="uk-form-width-medium" type="text" ng-model="widget.data['class']">
                    </div>
                </div>

            </li>
        </ul>

    </div>
</div>