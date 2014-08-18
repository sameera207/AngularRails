
@recipe = angular.module('recipe', ['ngRoute'])

@recipe.config(['$routeProvider','$locationProvider', ($routeProvider, $locationProvider) ->
  $routeProvider.
    when('/recipes',{
      templateurl: '../templates/home.html',
      controller: 'RecipeCtrl'
    }).
    when('/recipes/:id',{
      templateUrl: '../templates/recipes/show.html',
      controller: 'RecipeShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'RecipeCtrl'
    })
  $locationProvider.html5Mode(true).hashPrefix('!')
])

@recipe.directive 'partial', ->
  restrict: "E"
  scope:
    name:'='
  templateUrl: '../templates/partial.html'

  
