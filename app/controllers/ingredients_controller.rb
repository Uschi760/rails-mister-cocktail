class IngredientsController < ApplicationController
  def new
    @dose = Dose.find(params[:dose_id])
    @ingredient = Ingredient.new
  end
end
