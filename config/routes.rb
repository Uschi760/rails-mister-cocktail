# frozen_string_literal: true

# rubocop:enable
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :ingredients, only: [:new, :create]
  end
  resources :doses, only: :destroy
  resources :ingredients, only: :destroy
end
