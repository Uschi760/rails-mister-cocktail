class DosesController < ApplicationController
  def new
  @cocktail = Cocktail.find(params[:cocktail_id])
  @ingredient = Ingredient.find(params[:ingredient_id])
  @dose = Dose.new
  end
end
