<div class="uk-form uk-form-stacked">

    <div class="uk-form-row">
        <label class="uk-form-label" for="wk-content">Content</label>
        <div class="uk-form-controls">
            <select id="wk-content" class="uk-form-width-large" ng-model="content.data['content']">
                <option value="intro">Intro</option>
                <option value="full">Full</option>
            </select>
        </div>
    </div>

    <div class="uk-form-row">
        <label class="uk-form-label" for="wk-image">Image</label>
        <div class="uk-form-controls">
            <select id="wk-image" class="uk-form-width-large" ng-model="content.data['image']">
                <option value="intro">Intro</option>
                <option value="full">Full</option>
            </select>
        </div>
    </div>

    <div class="uk-form-row">
        <label class="uk-form-label" for="wk-category">Category</label>
        <div class="uk-form-controls">
            <select id="wk-category" class="uk-form-width-large" ng-model="content.data['category']">
                <option value="0">All</option>
                <?php foreach (\JHtml::_('category.options', 'com_content') as $option) : ?>
                    <option value="<?php echo $option->value ?>"><?php echo $option->text ?></option>
                <?php endforeach ?>
            </select>
        </div>
    </div>

    <div class="uk-form-row">
        <div class="uk-form-controls">
            <label><input type="checkbox" ng-model="content.data['subcategories']" ng-true-value="1" ng-false-value="0"> Include Subcategories</label>
        </div>
    </div>

    <div class="uk-form-row">
        <div class="uk-form-controls">
            <label><input type="checkbox" ng-model="content.data['featured']" ng-true-value="1" ng-false-value="0"> Featured articles only</label>
        </div>
    </div>

    <div class="uk-form-row">
        <label class="uk-form-label" for="wk-number">Limit</label>
        <div class="uk-form-controls">
            <input id="wk-number" class="uk-form-width-large" type="number" value="5" min="1" step="1" ng-model="content.data['number']">
        </div>
    </div>

    <div class="uk-form-row">
        <label class="uk-form-label" for="wk-order">Order</label>
        <div class="uk-form-controls">
            <select id="wk-order" class="uk-form-width-large" ng-model="content.data['order_by']">
                <option value="ordering">Default</option>
                <option value="rdate">Latest First</option>
                <option value="date">Latest Last</option>
                <option value="alpha">Alphabetical</option>
                <option value="ralpha">Alphabetical Reversed</option>
                <option value="hits">Most Hits</option>
                <option value="rhits">Least Hits</option>
                <option value="random">Random</option>
            </select>
        </div>
    </div>

</div>
