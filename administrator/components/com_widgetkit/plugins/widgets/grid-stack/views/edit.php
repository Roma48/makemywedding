<div class="uk-grid uk-grid-divider uk-form uk-form-horizontal" data-uk-grid-margin>
    <div class="uk-width-medium-1-4">

        <div class="wk-panel-marginless">
            <ul class="uk-nav uk-nav-side" data-uk-switcher="{connect:'#nav-content'}">
                <li><a href="">Grid</a></li>
                <li><a href="">Content</a></li>
                <li><a href="">General</a></li>
            </ul>
        </div>

    </div>
    <div class="uk-width-medium-3-4">

        <ul id="nav-content" class="uk-switcher">
            <li>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-width">Media Width</label>
                    <div class="uk-form-controls">
                        <select id="wk-width" class="uk-form-width-medium" ng-model="widget.data['width']">
                            <option value="1-5">20%</option>
                            <option value="1-4">25%</option>
                            <option value="3-10">30%</option>
                            <option value="1-3">33%</option>
                            <option value="2-5">40%</option>
                            <option value="1-2">50%</option>
                            <option value="3-5">60%</option>
                            <option value="2-3">67%</option>
                            <option value="7-10">70%</option>
                            <option value="3-4">75%</option>
                            <option value="4-5">80%</option>
                            <option value="1-1">100%</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-align">Media Align</label>
                    <div class="uk-form-controls">
                        <select id="wk-align" class="uk-form-width-medium" ng-model="widget.data['align']">
                            <option value="left">Left</option>
                            <option value="right">Right</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Alternate</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['alternate']"> Alternate the media alignment.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Gutter</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['gutter']"> Display the grid gutter.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-gutter-vertical">Horizontal Gutter</label>
                    <div class="uk-form-controls">
                        <select id="wk-gutter-vertical" class="uk-form-width-medium" ng-model="widget.data['gutter_vertical']">
                            <option value="default">Same as vertical</option>
                            <option value="none">None</option>
                            <option value="large">Large</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Divider</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['divider']"> Display dividers between the items.</label>
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
                    <span class="uk-form-label">Content</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['content_align']"> Vertically centered.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-text-align">Text Align</label>
                    <div class="uk-form-controls">
                       <select id="wk-text-align" class="uk-form-width-medium" ng-model="widget.data['text_align']">
                            <option value="left">Left</option>
                            <option value="center">Center</option>
                            <option value="media">To Media</option>
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

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-animation-media">Animation Media</label>
                    <div class="uk-form-controls">
                        <select id="wk-animation-media" class="uk-form-width-medium" ng-model="widget.data['animation_media']">
                            <option value="none">None</option>
                            <option value="fade">Fade</option>
                            <option value="slide">Slide</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-animation-content">Animation Content</label>
                    <div class="uk-form-controls">
                        <select id="wk-animation-content" class="uk-form-width-medium" ng-model="widget.data['animation_content']">
                            <option value="none">None</option>
                            <option value="fade">Fade</option>
                            <option value="slide">Slide</option>
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