angular.module('usuarios', ['angularModalService'])
.controller('Information', function($scope, $http) {
    $http.get('http://localhost:8080/serverExample/user/getAll').
        then(function(response) {
        	console.log(response.data);
            $scope.users = response.data;
        });
    
    $scope.myFunction = function (item) {
        $scope.auxName = 'Nombre:' + item.name;
        $scope.auxAddress = 'Dirección: ' + item.address;
        $scope.auxNumber = 'Número: ' + item.number;
        $scope.modal = true;
        $scope.mode = "display: block";
    };
    
    $scope.close = function () {
        $scope.mode = "display: none";
    };
        
});

