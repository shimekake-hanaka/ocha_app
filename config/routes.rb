Rails.application.routes.draw do
  # get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # def "layouts/application" => "layouts#application"
  # end
  # Defines the root path route ("/")
  # root "articles#index"
  
  # User画面
  get "/" => "home#top"
  get "/class" => "home#class"
  get "/kids" => "home#kids"
  get "/general" => "home#general"
  get "/personal" => "home#personal"
  get "/trial" => "home#trial"
  get "/access" => "home#access"
  get "/counseling" => "home#counseling"
  get "/ocha_dailypost_show/:id" => "home#ocha_dailypost_show"

  # 管理者画面用
  get "admin/top" => "admin#top"

  get "daily_post/index" => "daily_post#index", as: 'daily_post_index' #一覧
  get "daily_post/new" => "daily_post#new", as: 'daily_post_new' #新規作成画面遷移
  post "daily_post/create" => "daily_post#create", as: 'daily_post_create' #新規保存
  get "daily_post/show/:id" => "daily_post#show", as: 'daily_post_show' #詳細画面遷移
  get "daily_post/edit/:id" => "daily_post#edit", as: 'daily_post_edit' #編集画面遷移
  put "daily_post/:id" => "daily_post#update", as: 'daily_post_update' #編集更新
  delete "daily_post/:id" => "daily_post#delete", as: 'daily_post_delete' #投稿削除


  resources :contacts, only: %i[new create] do
    collection do
      post :confirm
      get :complete
    end
  end

  resources :reserves, only: %i[new create] do
    collection do
      post :confirm
      get :complete
    end
  end


end
