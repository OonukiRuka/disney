Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'foods/top' => 'foods#top'
  get 'foods/place' => 'foods#place'
  get 'foods/menu' => 'foods#menu'
  get 'foods/ame' => 'foods#ame'
  get 'foods/port' => 'foods#port'
  get 'foods/lost' => 'foods#lost'
  get 'foods/arab' => 'foods#arab'
  get 'foods/mermaid' => 'foods#mermaid'
  get 'foods/mystery' => 'foods#mystery'
  get 'foods/medi' => 'foods#medi'
  get 'foods/niku' => 'foods#niku'
  get 'foods/sakana' => 'foods#sakana'
  get 'foods/pasta' => 'foods#pasta'
  get 'foods/burger' => 'foods#burger'
  get 'foods/bread' => 'foods#bread'
  get 'foods/curry' => 'foods#curry'
  get 'foods/pizza' => 'foods#pizza'
  get 'foods/hand' => 'foods#hand'
  get 'foods/pop' => 'foods#pop'
  get 'foods/sweets' => 'foods#sweets'
  get 'foods/ice' => 'foods#ice'
  get 'foods/alcohol' => 'foods#alcohol'
  get 'foods/:food_id/likes' => 'likes#create'
  get 'foods/:food_id/likes/:id' => 'likes#destroy'
  get 'foods/login' => 'foods#login'

  resources :foods do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'foods#top'

end