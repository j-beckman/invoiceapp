BaseApp::Application.routes.draw do

  resources :clients


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  match "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end
