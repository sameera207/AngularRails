class RecipesController < ApplicationController
  respond_to :json

  def index
    @recipes = Recipe.all
  end
end
