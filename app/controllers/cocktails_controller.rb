class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
end

def index
    @cocktails = Cocktail.all
  end
