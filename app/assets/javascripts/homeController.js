
(function(){

	var homeController = function ($scope, $http){
		$http({
			url:'getJson',
			method: 'GET'
		}).success(function(data){
			console.log(data);
			$scope.data = data;
		});

		$scope.update = function(){
			$http({
				url:'home/updateAJAX',
				method: 'POST',
				params: $scope.data

			});
		}

	}

	homeController.$inject = ['$scope', '$http'];

	agendaApp.controller('homeController', homeController);

}());
