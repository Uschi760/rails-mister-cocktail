# frozen_string_literal: true

# rubocop:enable
class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
end

# GET /cocktails
def index
  @cocktails = Cocktail.all
end

# GET /cocktails/1
def show; end
