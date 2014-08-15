@recipe.controller 'RecipeShowCtrl', ['$scope', '$http', '$routeParams',
  ($scope, $http, $routeParams) ->
    $http.get('/recipes/1.json').success((data) ->
      $scope.recipe = data;
      $scope.foo = "bar"
    )]
