Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
  resources :category do 
    resources :theme do
      resources :question
    end
    resources :level do 
      resources :question
    end
  end
  root 'category#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
