<div class="uk-grid uk-grid-divider uk-form uk-form-horizontal" data-uk-grid-margin>
    <div class="uk-width-medium-1-4">

        <div class="wk-panel-marginless">
            <ul class="uk-nav uk-nav-side" data-uk-switcher="{connect:'#nav-content'}">
                <li><a href="">Slideshow</a></li>
                <li><a href="">Caption</a></li>
                <li><a href="">General</a></li>
            </ul>
        </div>

    </div>
    <div class="uk-width-medium-3-4">

        <ul id="nav-content" class="uk-switcher">
            <li>

                <div class="uk-form-row">
                    <label class="uk-form-label">Navigation</label>
                    <div class="uk-form-controls">
                        <select id="wk-caption-position" class="uk-form-width-medium" ng-model="widget.data['nav']">
                            <option value="none">None</option>
                            <option value="dotnav">Dotnav</option>
                            <option value="thumbnails">Thumbnails</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav != 'none'">
                            <label>
                                <select class="uk-form-width-small" ng-model="widget.data['nav_align']">
                                    <option value="left">Left</option>
                                    <option value="center">Center</option>
                                    <option value="right">Right</option>
                                    <option value="justify">Justify (Only Thumbnails)</option>
                                </select>
                                Alignment
                            </label>
                        </p>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.nav == 'dotnav'">
                            <label><input type="checkbox" ng-model="widget.data['dotnav_inside']"> Position the dotnav inside the image.</label>
                        </p>
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
                    <span class="uk-form-label">Slidenav</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['slidenav']"> Show prev/next navigation</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-animation">Animation</label>
                    <div class="uk-form-controls">
                        <select id="wk-animation" class="uk-form-width-medium" ng-model="widget.data['animation']">
                            <option value="fade">Fade</option>
                            <option value="scroll">Scroll</option>
                            <option value="swipe">Swipe</option>
                            <option value="scale">Scale</option>
                            <option value="slice-up">Slice Up</option>
                            <option value="slice-down">Slice Down</option>
                            <option value="slice-up-down">Slice Up Down</option>
                            <option value="fold">Fold</option>
                            <option value="puzzle">Puzzle</option>
                            <option value="boxes">Boxes</option>
                            <option value="boxes-reverse">Boxes Reverse</option>
                            <option value="random-fx">Random Fx</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="(['slice-up', 'slice-down', 'slice-up-down', 'fold', 'puzzle', 'boxes', 'boxes-reverse', 'random-fx'].indexOf(widget.data.animation) > -1)">
                            <label><input class="uk-form-width-mini" type="text" ng-model="widget.data['slices']"> Slices</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-duration">Duration (ms)</label>
                    <div class="uk-form-controls">
                        <input id="wk-duration" class="uk-form-width-medium" type="text" ng-model="widget.data['duration']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Autoplay</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['autoplay']"> Enable autoplay</label>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.autoplay">
                            <label><input class="uk-form-width-small" type="text" ng-model="widget.data['interval']"> Interval (ms)</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Kenburns</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['kenburns']"> Enable Kenburns effect on the image.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Fullscreen</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['fullscreen']"> Extend the image to full viewport height.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-min-height">Min. Height (px)</label>
                    <div class="uk-form-controls">
                        <input id="wk-min-height" class="uk-form-width-medium" type="text" ng-model="widget.data['min_height']">
                    </div>
                </div>

            </li>
            <li>

                <div class="uk-form-row">
                    <span class="uk-form-label">Caption</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['caption']"> Show caption</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-caption-position">Position</label>
                    <div class="uk-form-controls">
                        <select id="wk-caption-position" class="uk-form-width-medium" ng-model="widget.data['caption_position']">
                            <option value="center">Center</option>
                            <option value="top">Top</option>
                            <option value="bottom">Bottom</option>
                            <option value="left">Left</option>
                            <option value="right">Right</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-caption-animation">Animation</label>
                    <div class="uk-form-controls">
                        <select id="wk-caption-animation" class="uk-form-width-medium" ng-model="widget.data['caption_animation']">
                            <option value="fade">Fade</option>
                            <option value="slide">Slide</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Panel</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['caption_panel']"> Show background panel</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-title-size">Title Size</label>
                    <div class="uk-form-controls">
                        <select id="wk-title-size" class="uk-form-width-medium" ng-model="widget.data['title_size']">
                            <option value="h1">H1</option>
                            <option value="h2">H2</option>
                            <option value="h3">H3</option>
                            <option value="h4">H4</option>
                            <option value="large">Extra Large</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-link-style">Link</label>
                    <div class="uk-form-controls">
                        <select id="wk-link-style" class="uk-form-width-medium" ng-model="widget.data['link_style']">
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