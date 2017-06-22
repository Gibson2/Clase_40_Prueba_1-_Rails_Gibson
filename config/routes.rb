Rails.application.routes.draw do
  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batman_vs_superman'

  root 'pages#batman_vs_superman'
  post 'pages/add_votos_batman'
  post 'pages/add_votos_superman'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
