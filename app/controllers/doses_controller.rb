# frozen_string_literal: true

# rubocop:enable
class DosesController < ApplicationController
  def new
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new
  end

  def create
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new(ingredients_params)
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to ingredient_path(@dose.ingredient)
  end

  private

  def review_params
    params.require(:dose).permit(:content)
  end
end
