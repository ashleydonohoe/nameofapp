var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

app.controller('OrdersCtrl', ['$scope', function($scope) {
	$scope.orders =[
		{id: 1, total: 24, product_id: 1, user_id: 1},
		{id: 2, total: 7, product_id: 1},
		{id: 3, total: 42, product_id: 1, user_id: 1}
	];
}]);