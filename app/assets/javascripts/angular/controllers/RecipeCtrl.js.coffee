@recipe.controller 'RecipeCtrl', ['$scope', '$location', '$http', '$routeParams', ($scope, $location, $http, $routeParams) ->
  $scope.recipes = []
  $http.get('./recipes.json').success((data) ->
    $scope.recipes = data
  )
  $scope.viewRecipe = (id) ->
    $http.get("./recipes/" + id + ".json").success((data) ->
      $scope.recipe = data
    )
  $scope.searchRecipe = (id) ->
    $http.get("./recipes/search.json").success((data) ->
      $scope.recipes = data
    )

]
