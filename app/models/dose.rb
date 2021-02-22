# frozen_string_literal: true

# rubocop:enableclass Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient, message: 'Please choose another dose!' }
  validates :description, presence: true
end
