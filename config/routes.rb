Rails.application.routes.draw do
  namespace :api do
    get "/kitties" => "kitties#index"
  end
end
