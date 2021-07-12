Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pdf-generator', to: 'pages#pdf_generator', as: :pdf_generator
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
