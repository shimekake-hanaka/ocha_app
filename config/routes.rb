Rails.application.routes.draw do
  # get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # def "layouts/application" => "layouts#application"
  # end
  # Defines the root path route ("/")
  # root "articles#index"
  get "/" => "home#top"
  get "acsess" => "home#acsess"
  get "experience" => "home#experience"
  get "class" => "home#class"
  get "co" => "home#co"
  get "children-class" => "home#children-class"
  get "adult-class" => "home#adult-class"
  get "personal-class" => "home#personal-class"

  resources :contacts, only: %i[new create] do
    collection do
      post :confirm
      get :complete
    end
  end
end
