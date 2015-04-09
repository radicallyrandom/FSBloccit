Rails.application.routes.draw do

  devise_for :users

	
	resources :topics do 
		resources :posts, except: [:index]
	end

	resources :posts do 
		resources :summaries, except: [:index]
	end
	# get '/posts/:post_id/summaries/new', to: 'summaries#new'

	# get 'posts/:post_id/summaries/:id', to: 'summaries#show', as: 'summary'


	get 'about' => 'welcome#about'

  	root to: 'welcome#index'
end
