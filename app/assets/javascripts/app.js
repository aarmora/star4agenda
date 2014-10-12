var agendaApp = angular.module('agendaApp', ['ngRoute', 'ui.bootstrap']);

agendaApp.config(['$routeProvider', function ($routeProvider){
	$routeProvider
	.otherwise({
		controller: 'homeController',
		templateUrl: '../Templates/Index.html'
	})
}]);

