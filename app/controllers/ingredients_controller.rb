# frozen_string_literal: true

# rubocop:enable
def new
  @dose = Dose.find(params[:dose_id])
  @ingredient = Ingredient.new
end

