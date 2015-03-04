PairFit::Application.routes.draw do

  root                'sessions#new'
  get    'signup'  => 'users#new'
  resources :users do
    get "dashboard", on: :member
    get "buddies", on: :member
    get "schedule", on: :member
    get "buddies", on: :member
    get "buddy_page", on: :member
    get 'edit_activities', on: :member
    patch 'update_activities', on: :member
    resources :user_activities
    resources :user_marks
  end

  resources :users

  resources :partnerships
  resources :user_marks
  resources :user_activities
  get  'static_pages/user_profile'
  get  'static_pages/user_profile2'
  get  'static_pages/find_buddy'
  get  'static_pages/search_results'
  get  'static_pages/buddy_page'
  get  'static_pages/buddies'
  get  'static_pages/schedule'
  get  'static_pages/dashboard'
  get  'static_pages/search_results_B'


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
