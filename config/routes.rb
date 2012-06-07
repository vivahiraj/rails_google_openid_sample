RailsGoogleOpenidSample::Application.routes.draw do
  get "welcome/index"

  root :to => 'welcome#index'

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
