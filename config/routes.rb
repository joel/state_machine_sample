StateMachineSample::Application.routes.draw do

  root :to => 'articles#index'
  
  resources :articles do
    member do
      put 'publish'
      put 'unpublish'
    end
  end
  
end
