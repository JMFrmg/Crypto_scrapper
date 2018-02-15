Rails.application.routes.draw do
  root 'cryptos#home'

  post 'cryptos/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
