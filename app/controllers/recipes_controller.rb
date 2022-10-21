class RecipesController < ApplicationController

def create
  recipes = Recipe.create!(recipe_params)
  render json: recipes, status: :created
end


private 

def recipe_params
  params.permit(:title, :instructions, :minutes_to_complete)
end


end
