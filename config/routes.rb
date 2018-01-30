Rails.application.routes.draw do
  root to: "action_buttons#index"

  get "action_buttons/default"
  post "action_buttons/success"
  post "action_buttons/recommend"
  post "action_buttons/recommended"
  put "action_buttons/like_with_count"
  put "action_buttons/unlike_with_count"
end
