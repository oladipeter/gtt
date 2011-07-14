Gtt::Application.routes.draw do

  resources :faqs

  get "faqs/index"
  get "comments/index"
  get "comments/list"
  get "comments/create"
  get "comments/modify"
  get "comments/delete"
  get "admin_support_messages/index"
  get "support_messages/Index"

  resources :supmessages

  get "support/index"

  resources :advices

  resources :systems

  resources :articles

  # BASIC ROUTING

  get "client/index"
  get "contacts/index"
  resources :contacts
  get "administrator/index"
  devise_for :admins
  get "start/index"
  get "backend/index"
  get "frontend/index"
  devise_for :users


  # ADMINISTRATOR

  match "/admin" => redirect("/admins/sign_in")
  match 'administrator/index' => 'administrator#index', :as => "administrator"
  match 'administrator/create' => 'administrator#create', :as => "administrator_create"
  match 'administrator/new' => 'administrator#new', :as => "administrator_new"
  match 'administrator/destroy/:id' => 'administrator#destroy', :as => "administrator_delete"
  match 'administrator/edit/:id' => 'administrator#edit', :as => "administrator_edit"
  match 'administrator/update/:id' => 'administrator#update', :as => "administrator_update"


  # CLIENT

  match 'client/new' => 'client#new', :as => "client_new"
  match 'client/create' => 'client#create', :as => "client_create"
  match 'client/index' => 'client#index', :as => "client"
  match 'client/edit/:id' => 'client#edit', :as => "client_edit"
  match 'client/update/:id' => 'client#update', :as => "client_update"

  # SUPPORT

  match 'frontend/support', :to => 'support#index'
  match '/support', :to => 'support#index'
  match '/support/all_articles' => 'support#all_articles', :as => "all_articles"
  match '/support/all_supmessages' => 'support#all_supmessages', :as => "all_supmessages"
  match '/support/all_faqs' => 'support#all_faqs', :as => "all_faqs"


  # ERROR MESSAGE

  match '/support', :to => 'support#index'
  match '/support', :to => 'support#index'

  # SUPPORT MESSAGES ON ADMIN SITE

  match 'support_messages/list' => 'admin_support_messages#index', :as => "support_messages_list"
  match 'support_messages/datasheet/:id' => 'admin_support_messages#datasheet', :as => "support_messages_datasheet"
  match 'admin_support_messages/datasheet_update/:id' => 'admin_support_messages#datasheet_update', :as => "update_datasheet"

  # SUPMESSAGE COMMENTS

  match 'comments/index' => 'comments#index', :as => "comments_index"
  match 'comments/list' => 'comments#list', :as => "comments_list"
  match 'comment/new' => 'comments#new', :as => "comment_new"
  match 'comment/create' => 'comments#create', :as => "comment_create"
  match 'comment/modify/:id' => 'comments#modify', :as => "comment_modify"
  match 'comment/delete/:id' => 'comments#delete', :as => "comment_delete"







  # namespace :admin do
  #   root :to => "backend#index"
  # end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "start#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
