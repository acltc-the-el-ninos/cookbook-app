class RecipesController < ApplicationController
  def home
    @recipe = Recipe.last
  end

  def index
    @recipes = Recipe.all
  end

  def show_create_recipe
  end

  def show_create_recipe_result
    @recipe = Recipe.create(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions]
    )
  end
end
