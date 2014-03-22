Tricoachapp::Application.routes.draw do
  
	root   "athletes#index"
  	resources :athletes do
  		resources :raceregs
  	end
end
