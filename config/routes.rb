Rails.application.routes.draw do
  resources :crypto_prices
  resources :cryptoprices
  resources :cryptocurrencies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get"/compnies", to: "compnies#index"
  get"/compnies/:id", to: "compnies#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
