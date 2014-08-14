this.recipe = angular.module('recipe',['ngRoute']);

this.recipe.config(['$routeProvider', function($routeProvider){
  return $routeProvider.otherwise({
     templateUrl: '../templates/home.html',
     controller: 'RecipeCtrl'
  });
}]);
