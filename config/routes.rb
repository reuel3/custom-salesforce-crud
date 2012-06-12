CustomSalesforceCrud::Application.routes.draw do

resources :merchandises

match "/merchandise__cs/:id", to: "merchandises#update", as: "merchandise"
match "/merchandise__cs", to: "merchandises#create", as: "merchandise"
match "/merchandise__cs/:id/show", to: "merchandises#show", as: "merchandise"
match "/merchandise__cs/:id/delete", to: "merchandises#destroy", as: "merchandise"

end
