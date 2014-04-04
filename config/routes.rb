Tricoachapp::Application.routes.draw do
  resource :session

  resources :users

  resources :races 
  
	root   "athletes#index"
  	resources :athletes do
  		resources :raceregs
  	end

  	get 'signup' => 'users#new'

  	

end
