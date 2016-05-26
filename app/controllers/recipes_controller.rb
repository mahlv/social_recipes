class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(params.require(:recipe).permit(:name, :cuisine, :food_type, :preferences, :portions, :time, :difficulty, :ingredients, :instructions))
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


end
