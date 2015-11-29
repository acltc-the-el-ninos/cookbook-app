class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    sort_attribute = params[:input_sort]
    sort_order = params[:input_sort_order]
    if sort_attribute && sort_order
      @recipes = Recipe.order(sort_attribute => sort_order)
      # @recipes = Recipe.order(:prep_time => :desc)
    end
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end

  def new
  end

  def create
    recipe = Recipe.create(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      image: params[:input_image]
    )
    flash[:success] = "Recipe was successfully created!"
    flash[:info] = "This is a random message!"
    redirect_to '/recipes'
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.update(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      image: params[:input_image]
    )
    flash[:success] = "Recipe was successfully updated!"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    flash[:success] = "Recipe was successfully deleted!"
    redirect_to '/recipes'
  end
end
