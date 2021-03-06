Rails.application.routes.draw do
  resources :dor_masters
  resources :tohamhalshamel_tanks
  resources :aradah_tanks
  resources :aljnabeen_tanks
  resources :aqiq_thrad_tanks
  resources :yabs
  resources :aqiqs
  resources :aradahs
  resources :alashiab_alsoqia
  resources :tohamhalshamels
  resources :aljnabens
  resources :smallprojects
  devise_for :users, :path_prefix => 'd'
  resources :projects
  resources :users

  root to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
