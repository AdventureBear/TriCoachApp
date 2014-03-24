Tricoachapp::Application.routes.draw do
  resource :session

  resources :users

	root   "athletes#index"
  	resources :athletes do
  		resources :raceregs
  	end

  	get 'signup' => 'users#new'

end
