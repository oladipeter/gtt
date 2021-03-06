Gtt::Application.routes.draw do

  match 'ugyfelhivo' => 'ugyfelhivo#index'

  get "offers/index"
  get "globomax/index"
  get "website/admin"

  resources :faqs

  get "faqs/index"
  get "comments/index"
  get "comments/list"
  get "comments/create"
  get "comments/modify"
  get "comments/delete"
  get "admin_support_messages/index"
  get "support_messages/Index"
  get "support/index"

  match 'supmessages/search' => 'supmessages#search', :as => "search"
  match 'articles/ordered_list' => 'articles#ordered_list', :as => "articles_list"
  match 'hirarchivum' => 'archiv#index', :as => "archiv_article"

  resources :supmessages
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

  # FRONTEND

  match 'frontend/index' => 'frontend#index', :as => "frontend_index"
  match 'frontend/show_advice/:id' => 'frontend#show_advice', :as => "show_advice"

  # SUPPORT

  match 'frontend/support', :to => 'support#index'
  match '/support', :to => 'support#index'
  match '/support/all_articles' => 'support#all_articles', :as => "all_articles"
  match '/support/all_supmessages' => 'support#all_supmessages', :as => "all_supmessages"
  match '/support/all_faqs' => 'support#all_faqs', :as => "all_faqs"
  match '/support/supmessage/:id' => 'support#show_supmessage', :as => "show_supmessage"
  match '/support/all_faqs/' => 'support#all_faqs', :as => "all_faqs"
  match '/support/all_articles/' => 'support#all_articles', :as => "all_articles"
  match '/support/search/' => 'support#search', :as => "frontend_support_search", :path => '/support/search'

  # ERROR MESSAGE

  match '/support', :to => 'support#index'
  match '/support', :to => 'support#index'

  # SUPPORT MESSAGES ON ADMIN SITE

  match 'support_messages/list' => 'admin_support_messages#index', :as => "support_messages_list"
  match 'support_messages/datasheet/:id' => 'admin_support_messages#datasheet', :as => "support_messages_datasheet"
  match 'admin_support_messages/datasheet_update/:id' => 'admin_support_messages#datasheet_update', :as => "update_datasheet"

  match 'client/search' => 'client#search', :as => "search"

  # SUPMESSAGE COMMENTS

  match 'comments/index' => 'comments#index', :as => "comments_index"
  match 'comments/list' => 'comments#list', :as => "comments_list"
  match 'comment/new' => 'comments#new', :as => "comment_new"
  match 'comment/create' => 'comments#create', :as => "comment_create"
  match 'comment/modify/:id' => 'comments#modify', :as => "comment_modify"
  match 'comment/delete/:id' => 'comments#delete', :as => "comment_delete"
  match 'comment/create_user_comment/' => 'comments#create_user_comment', :as => "create_user_comment"

  # WANT AN OFFER

  match 'offers' => 'offers#new'
  match 'offers/list' => 'offers#list', :as => "list_offers"
  match 'offers/new' => 'offers#new', :as => "new_offer"
  match 'offers/create' => 'offers#create', :as => "create_offer"
  match 'offers/successfully' => 'offers#message', :as => "successfully_offer"

  # QUESTIONS

  match 'question/index' => 'question#index', :as => "question"
  match 'questions' => 'question#index', :as => "question"
  match 'questions/save' => 'question#save', :as => "save_questions"
  match 'questions/show' => 'question#show', :as => "show_questions"
  match 'questions/show_details' => 'question#show_details', :as => "show_details"


  # ------------------------------------------------------------------------------------------------------------------
  # ------------------------------------------------------------------------------------------------------------------
  #                                          GLOBOMAX WEBSITE ROUTING
  # ------------------------------------------------------------------------------------------------------------------
  # ------------------------------------------------------------------------------------------------------------------

  # -- WEBSITE ADMIN INDEX --

  match 'website/admin' => 'website#admin', :as => "website_admin" # website admin index

  # -- ABOUT US --

  match 'website/about_us' => 'website#about_us', :as => "about_as" # index
  match 'website/about_us/:id' => 'website#edit_about_us', :as => "edit_about_us" # edit
  match 'website/update_about_us/:id' => 'website#update_about_us', :as => "update_about_us" # update
  
  # -- CONTACT US --

  match 'website/contact_us' => 'website#contact_us', :as => "contact_us" # index
  match 'website/contact_us/:id' => 'website#edit_contact_us', :as => "edit_contact_us" # edit
  match 'website/update_contact_us/:id' => 'website#update_contact_us', :as => "update_contact_us" # update

  # -- EMPLOYEES --

  # match 'website/employees' => 'website#employees', :as => "employees" # index
  # match 'website/new_employee/:id' => 'website#new_employee', :as => "new_employee" # new
  # match 'website/create_employee/:id' => 'website#create_employee', :as => "create_employee" # create
  # match 'website/edit_employee/:id' => 'website#edit_employee', :as => "edit_employee" # edit
  # match 'website/update_employee/:id' => 'website#update_employee', :as => "update_employee" # update
  # match 'website/destroy_employee/:id' => 'website#destroy_employee', :as => "destroy_employee" # destroy

  # -- REFERENCES --

  match 'website/edit_reference/:id' => 'website#edit_reference', :as => "edit_reference" # edit
  match 'website/update_reference/:id' => 'website#update_reference', :as => "update_reference" # update
  
  # -- COMMERCIALS --

  match 'globomax/reklamok/friss/:position' => 'globomax#show_commercial', :as => "show_commercial" # show
  match 'website/edit_commercial/:id' => 'website#edit_commercial', :as => "edit_commercial" # edit
  match 'website/update_commercial/:id' => 'website#update_commercial', :as => "update_commercial" # update

  # -- GLOBOMAX --

  match 'globomax/index' => 'globomax#index', :as => "index" # globomax index
  match 'globomax/employees' => 'globomax#contacts', :as => "employees" # employees
  match 'globomax/products' => 'globomax#products', :as => "products" # products
  match 'globomax/contact_us' => 'globomax#contact_us', :as => "contact_us" # contacts
  match 'globomax/references' => 'globomax#references', :as => "references" # references
  match 'globomax/webarticle/:id' => 'globomax#website_article', :as => "website_article" # show article
  match 'globomax/webadvice/:id' => 'globomax#website_advice', :as => "website_advice" # show advice

  # -- UPLOADER -- Banics Peti feltoltoje

  match 'uploader/get_request' => 'uploader/start#get_request', :as => "uploader_get_request" # user in uploader
  match 'uploader/start_upload' => 'uploader/start#start_upload', :as => "upload_started" # user in uploader
  match 'uploader/finished_upload' => 'uploader/start#finished_upload', :as => "upload_finished" # user in uploader

  # ------------------------------------------------------------------------------------------------------------------
  # ------------------------------------------------------------------------------------------------------------------
  #                                                  HELP ROUTING
  # ------------------------------------------------------------------------------------------------------------------
  # ------------------------------------------------------------------------------------------------------------------

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
  root :to => "globomax#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
