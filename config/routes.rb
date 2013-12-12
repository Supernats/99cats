Nncats::Application.routes.draw do

  resources :cats

  resources :users, :only => [:create, :new]

  resource :session, :only => [:new, :create, :destroy]

end
