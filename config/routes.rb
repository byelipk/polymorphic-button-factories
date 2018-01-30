Rails.application.routes.draw do
  root to: "action_buttons#index"

  get "action_buttons/default"
  post "action_buttons/success"
  post "action_buttons/recommend"
  post "action_buttons/recommended"
end
