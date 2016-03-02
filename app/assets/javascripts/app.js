
var app = angular.module('shop', ['ngResource']); 




$(document).on('ready page:load', function(){
	angular.bootstrap(document.body, ['shop']) // "angular.bootstrap..." manually generates an ng-app directive on the body tag of your app.
	
	
});

app.factory('models', ['$resource', function($resource){
	var orders_model = $resource("/orders/:id.json", {id: "@id"});
	var products_model = $resource("/products/:id.json", {id: "@id"});
	var x = {
		orders: orders_model,
		products: products_model
	};
	return x;

}]);

app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){
		// All code belonging to controller goes here.

		// GETS data from $resource and turns it into a readable array.
		$scope.orders = models.orders.query();
		$scope.products = models.products.query();
		
		/*$scope.orders = [
			{id: 1, total: 89, product_id: 1, user_id: 1},
			{id: 2, total: 99, product_id: 1},
			{id: 3, total: 89, product_id: 1, user_id: 1}
		];*/
		
		$scope.addOrder = function(){
			// Makes sure product_id and total are filled out
			if($scope.newOrder.product_id || $scope.newOrder.total === ''){ return; }
			order = models.orders.save($scope.newOrder, function(){
				recent_order = models.orders.get({id: order.id});
				$scope.orders.push(recent_order);
				$scope.newOrder = '';
			}); // order
			
		} // $scope.addOrder

		// This function deletes existing orders
		$scope.deleteOrder = function(){
			$scope.orders.splice($scope.orders.indexOf(orders), 1);
			models.orders.delete(order);

		}

	}]);