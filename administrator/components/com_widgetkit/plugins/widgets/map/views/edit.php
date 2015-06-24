<div class="uk-grid uk-grid-divider uk-form uk-form-horizontal" data-uk-grid-margin>
    <div class="uk-width-medium-1-4">

        <div class="wk-panel-marginless">
            <ul class="uk-nav uk-nav-side" data-uk-switcher="{connect:'#nav-content-map'}">
                <li><a href="#">Map</a></li>
                <li><a href="#">Style</a></li>
                <li><a href="#">Popup</a></li>
                <li><a href="#">General</a></li>
            </ul>
        </div>

    </div>
    <div class="uk-width-medium-3-4">

        <ul id="nav-content-map" class="uk-switcher">
            <li>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-width">Width</label>
                    <div class="uk-form-controls">
                        <input id="wk-width" class="uk-form-width-medium" type="text" ng-model="widget.data['width']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-height">Height</label>
                    <div class="uk-form-controls">
                        <input id="wk-height" class="uk-form-width-medium" type="text" ng-model="widget.data['height']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-maptypeid">Map Type</label>
                    <div class="uk-form-controls">
                        <select id="wk-maptypeid" class="uk-form-width-medium" ng-model="widget.data['maptypeid']">
                            <option value="ROADMAP">Roadmap</option>
                            <option value="SATELLITE">Satellite</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Type Controls</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['maptypecontrol']"> Show type controls.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Map Controls</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['mapctrl']"> Show map controls.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-zoom">Zoom Level</label>
                    <div class="uk-form-controls">
                        <select id="wk-zoom" class="uk-form-width-medium" ng-model="widget.data['zoom']">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                        </select>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-marker">Marker</label>
                    <div class="uk-form-controls">
                        <select id="wk-marker" class="uk-form-width-medium" ng-model="widget.data['marker']">
                            <option value="0">Hide</option>
                            <option value="1">Show</option>
                            <option value="2">Show Popup</option>
                            <option value="3">Opened Popup</option>
                        </select>
                        <p class="uk-form-controls-condensed" ng-if="widget.data.marker != '0'">
                            <label><input class="uk-form-width-mini" type="text" ng-model="widget.data['popup_max_width']"> Popup width in px.</label>
                        </p>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Scroll Wheel</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['zoomwheel']"> Zoom map on scroll.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Draggable</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['draggable']"> Move map on drag.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Directions Controls</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['directions']"> Show directions controls.</label>
                    </div>
                </div>

            </li>
            <li>

                <div class="uk-form-row">
                    <span class="uk-form-label">Default UI</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['disabledefaultui']"> Remove all UI controls from the map.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <span class="uk-form-label">Lightness</span>
                    <div class="uk-form-controls uk-form-controls-text">
                        <label><input type="checkbox" ng-model="widget.data['styler_invert_lightness']"> Invert lightness.</label>
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-hue-text">Hue (e.g. #ff0000)</label>
                    <div class="uk-form-controls">
                        <input id="wk-hue-text" class="uk-form-width-medium" type="text" ng-model="widget.data['styler_hue']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-saturation-text">Saturation (-100 to 100)</label>
                    <div class="uk-form-controls">
                        <input id="wk-saturation-text" class="uk-form-width-medium" type="text" ng-model="widget.data['styler_saturation']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-lightness-text">Lightness (-100 to 100)</label>
                    <div class="uk-form-controls">
                        <input id="wk-lightness-text" class="uk-form-width-medium" type="text" ng-model="widget.data['styler_lightness']">
                    </div>
                </div>

                <div class="uk-form-row">
                    <label class="uk-form-label" for="wk-gamma-text">Gamma (0 to 10)</label>
                    <div class="uk-form-controls">
                        <input id="wk-gamma-text" class="uk-form-width-medium" type="text" ng-model="widget.data['styler_gamma']">
                    </div>
                </div>

            </li>
            <li>

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
