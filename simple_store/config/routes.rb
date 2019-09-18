# frozen_string_literal: true

Rails.application.routes.draw do
  get 'products/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  root 'products#index'
end
