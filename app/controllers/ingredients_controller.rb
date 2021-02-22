# frozen_string_literal: true

# rubocop:enable
class IngredientsController < ApplicationController

def create
def new
  @dose = Dose.find(params[:dose_id])
  @ingredient = Ingredient.new(dose_params)
  @ingredient.dose =
end

end

end
