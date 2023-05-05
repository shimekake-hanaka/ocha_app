Rails.application.routes.draw do
  # get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # def "layouts/application" => "layouts#application"
  # end
  # Defines the root path route ("/")
  # root "articles#index"
  get "/" => "home#top"
  get "acsess" => "home#acsess"
  get "appearance" => "home#appearance"
  get "class" => "home#class"
end
