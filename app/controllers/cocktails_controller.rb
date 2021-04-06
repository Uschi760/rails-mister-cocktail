# frozen_string_literal: true

# rubocop:enable
class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %(':show, :edit, :update, :destroy)

  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show; end

  def create
    @cocktail = Cocktail.new(pet_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      render 'edit'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktail_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
