Rails.application.routes.draw do
 root "pages#home"
  get "pages/home" ,to: "pages#home"
  get "pages/gallery" ,to: "pages#gallery"
  get "pages/about" ,to: "pages#about"
resources :recipes

end
