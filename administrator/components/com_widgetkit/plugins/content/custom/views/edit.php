<div ng-controller="customCtrl as custom">

    <div class="uk-grid uk-grid-divider uk-form uk-form-stacked" data-uk-grid-margin>
        <div ng-class="vm.name == 'contentCtrl' ? 'wk-width-xlarge-1-5' : ''" class="uk-width-medium-1-3">

            <div class="wk-panel-marginless">

                <ul id="js-content-items" class="uk-nav uk-nav-side" data-uk-sortable="{dragCustomClass:'wk-sortable'}" ng-show="content.data.items.length">
                    <li class="uk-visible-hover" ng-repeat="item in content.data.items" ng-class="(item === $parent.item ? 'uk-active':'')">
                        <ol class="uk-subnav wk-subnav-icon uk-hidden">
                            <li>
                                <a ng-click="custom.deleteItem(item)"><i class="uk-icon-times"></i></a>
                            </li>
                        </ol>
                        <a ng-click="custom.editItem(item)">
                            <div class="wk-preview-thumb uk-cover-background uk-margin-small-right" ng-style="{'background-image': 'url(' + custom.previewItem(item) + ')'}"></div>
                            {{ item.title }}
                        </a>
                    </li>
                </ul>

                <p class="uk-margin">
                    <button class="uk-button" ng-click="custom.addItem()">Add Item</button>
                    <button class="uk-button" ng-click="custom.importItems()">Add Media</button>
                </p>

            </div>

        </div>
        <div ng-class="vm.name == 'contentCtrl' ? 'wk-width-xlarge-4-5' : ''" class="uk-width-medium-2-3" ng-show="item">

            <div class="uk-form-row">
                <label class="uk-form-label" for="wk-title">Title</label>
                <div class="uk-form-controls">
                    <input id="wk-title" class="uk-width-1-1" type="text" ng-model="item.title">
                </div>
            </div>

            <div class="uk-form-row">
                <label class="uk-form-label">Media</label>
                <div class="uk-form-controls">
                    <field-media title="item.title" media="item.media" options="item.options['media']"></field-media>
                </div>
            </div>

            <div class="uk-form-row">
                <label class="uk-form-label" for="wk-content">Content</label>
                <div class="uk-form-controls">
                    <textarea id="wk-content" class="uk-width-1-1" ng-model="item.content" rows="10"></textarea>
                </div>
            </div>

            <div class="uk-form-row">
                <label class="uk-form-label" for="wk-link">Link</label>
                <div class="uk-form-controls">
                    <field type="text" options='{"attributes":{"id":"wk-link", "placeholder":"http://"}, "icon":"link"}' ng-model="item.link"></field>
                </div>
            </div>

            <div class="uk-form-row" ng-repeat="field in extrafields" ng-show="!custom.editfields">
                <label class="uk-form-label" for="wk-field-{{ $index }}">{{ field.label }}</label>
                <div class="uk-form-controls">
                    <field type="{{ field.type }}" options='{{ custom.getFieldOptions(field, $index) }}' ng-model="item[field.name]"></field>
                </div>
            </div>

            <div ng-show="custom.editfields">

                <h3 class="uk-h3 uk-margin-large-top">Manage Custom Fields</h3>

                <div class="uk-margin" id="js-fields-items" data-uk-sortable ng-show="extrafields.length">
                    <div class="uk-margin-small" ng-repeat="field in extrafields">
                        <div class="uk-panel uk-panel-box wk-panel-small uk-form">
                            <input type="text" class="uk-form-blank" ng-model="field.label" value="{{field.label}}">
                            <a class="uk-text-danger uk-float-right wk-margin-small-top" ng-click="custom.deleteField(field)"><i class="uk-icon-trash-o"></i></a>
                            <span class="uk-text-muted uk-float-right wk-margin-small-top uk-margin-right">{{ field.name }}: {{ field.type }}</span>
                        </div>
                    </div>
                </div>

                <div class="uk-margin-top" ng-show="custom.addCustomField">

                    <div class="uk-grid uk-grid-width-1-3">

                        <div>
                            <div class="uk-form-row">
                                <label class="uk-form-label">Field name</label>
                                <div class="uk-form-controls">
                                    <input class="uk-width-1-1" type="text" ng-model="custom.custom.field.name" placeholder="Field name">
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="uk-form-row">
                                <label class="uk-form-label">Field label</label>
                                <div class="uk-form-controls">
                                    <input class="uk-width-1-1" type="text" ng-model="custom.custom.field.label" placeholder="Field label">
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="uk-form-row">
                                <label class="uk-form-label">Field Type</label>
                                <div class="uk-form-controls">
                                    <select class="uk-width-1-1" ng-model="custom.custom.field.type" ng-options="f.name as f.label for f in custom.fields"></select>
                                </div>
                            </div>
                        </div>

                    </div>

                    <p class="uk-margin-bottom-remove">
                        <button class="uk-button uk-button-success" ng-click="custom.addField(custom.custom.field);custom.addCustomField=false" ng-disabled="!(custom.custom.field.name && custom.custom.field.label && custom.custom.field.type)" type="button">Add</button>
                        <button class="uk-button" ng-click="custom.addCustomField=false" type="button">Cancel</button>
                    </p>

                </div>

                <div class="uk-margin-top" ng-show="!custom.addCustomField">
                    <div class="uk-button-dropdown" data-uk-dropdown="{ mode: 'click' }" >
                        <button class="uk-button uk-button-primary" type="button">New Field &nbsp; <i class="uk-icon-caret-down"></i></button>
                        <div class="uk-dropdown uk-dropdown-up uk-dropdown-small uk-text-left">
                            <ul class="uk-nav uk-nav-dropdown">
                                <li class="uk-nav-header">Field Types</li>
                                <li ng-repeat="(fieldname, fieldsettings) in custom.corefields" ng-show="!custom.hasField(fieldname)"><a ng-click="custom.addField({name:fieldname, type:fieldsettings.type, label:fieldsettings.label, core:true})">{{ fieldsettings.label}}</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a ng-click="custom.custom.field={};custom.addCustomField=true">Custom <i class="uk-icon-magic"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <a class="uk-button" ng-click="custom.toggleEditFields()">Close</a>
                </div>

            </div>

            <div class="uk-margin-large-top" ng-show="!custom.editfields">
                <a class="uk-button" ng-click="custom.toggleEditFields()">Manage Fields</a>
            </div>

        </div>
    </div>

</div>
