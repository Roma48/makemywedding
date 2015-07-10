<div class="uk-form uk-form-stacked" ng-controller="zooCtrl as ctrl">

	<span class="uk-form-label">Source</span>

	<!-- App -->
	<div class="uk-form-row">
		<div class="uk-form-controls">
			<select class="uk-form-width-large" ng-model="content.data.application" ng-change="ctrl.appSelected()"
				ng-options="id as app.name for (id, app) in zoo">
				<option value="">- Select Application -</option>
			</select>
			<span class="uk-form-help-inline">App</span>
		</div>
	</div>

	<div class="uk-margin-top" ng-show="content.data.application">

		<!-- Mode -->
		<div class="uk-form-row">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.mode">
					<option value="categories">Categories</option>
					<option value="types">Types</option>
				</select>
				<span class="uk-form-help-inline">Mode</span>
			</div>
		</div>

		<!-- Type -->
		<div class="uk-form-row" ng-show="content.data.application && content.data.mode == 'types'">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.type"
					ng-options="id as type.name for (id, type) in zoo[content.data.application].types">
				</select>
				<span class="uk-form-help-inline">Type</span>
			</div>
		</div>

		<!-- Category -->
		<div class="uk-form-row" ng-show="content.data.application && content.data.mode == 'categories'">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.category"
					ng-options="cat.id as cat.name for cat in zoo[content.data.application].categories">
				</select>
				<span class="uk-form-help-inline">Category</span>
			</div>
		</div>

		<!-- Subcategories -->
		<div class="uk-form-row" ng-show="content.data.application && content.data.mode == 'categories'">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.subcategories">
					<option value="0">No</option>
					<option value="1">Yes</option>
				</select>
				<span class="uk-form-help-inline">Include Subcategories</span>
			</div>
		</div>

		<!-- Limit -->
		<div class="uk-form-row">
			<div class="uk-form-controls">
				<input class="uk-form-width-large" type="number" value="4"  min="1" step="1" ng-model="content.data.count">
				<span class="uk-form-help-inline">Limit</span>
			</div>
		</div>


		<span class="uk-form-label uk-margin-top">Order</span>

		<!-- Core elements -->
		<div class="uk-form-row">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.order.core"
					ng-options="el.id as el.name for el in zoo[content.data.application].types[content.data.type].core_elements">
				</select>
				<span class="uk-form-help-inline">Core</span>
			</div>
		</div>

		<span>- Or -</span>

		<!-- Elements -->
		<div class="uk-form-row" ng-repeat="type in zoo[content.data.application].types">
			<div class="uk-form-controls">
				<select class="uk-form-width-large" ng-model="content.data.order[type.id]"
					ng-options="el.id as el.name for el in zoo[content.data.application].types[type.id].elements">
					<option value="">- Select Element -</option>
				</select>
				<span class="uk-form-help-inline">{{type.name}}</span>
			</div>
		</div>

		<!-- Order options -->
		<div class="uk-form-row">
			<div class="uk-form-controls">
				<label><input type="checkbox" ng-model="content.data.order._reversed" ng-true-value="'_reversed'" ng-false-value="0"> Reverse</label>
				<label><input type="checkbox" ng-model="content.data.order._random" ng-true-value="'_random'" ng-false-value="0"> Random</label>
				<label><input type="checkbox" ng-model="content.data.order._alphanumeric" ng-true-value="'_alphanumeric'" ng-false-value="0"> Alphanumeric</label>
			</div>	
		</div>

	</div>

</div>

<script type="zoo/config">
	<?php echo json_encode($app['joomla.zoo']->getFormData()); ?>
</script>