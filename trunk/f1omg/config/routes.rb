ActionController::Routing::Routes.draw do |map|
  map.resources :sim_tech_parts
  map.resources :sim_staffs
  map.resources :real_tech_parts
  map.resources :tech_part_types
  map.resources :real_staffs
  map.resources :real_teams
  map.resources :staff_positions
  
  map.root :controller => 'welcome', :action => 'index'
  map.welcome '', :controller => 'welcome', :action => 'index'
  map.dashboard 'dashboard', :controller => 'dashboard', :action => 'index'
  map.help 'help', :controller => 'help', :action => 'index'
  map.teams 'teams', :controller => 'sim_teams'
  map.yourteam 'yourteam', :controller => 'sim_teams', :action => 'edit'
  map.createteam 'createteam', :controller => 'sim_teams', :action => 'new'

  map.admin 'admin', :controller => 'admin', :action => 'index'
  map.staff_positions 'staff_positions', :controller => 'staff_positions', :action => 'index'
  map.tech_part_types 'tech_part_types', :controller => 'tech_part_types', :action => 'index'
  map.real_teams 'real_teams', :controller => 'real_teams', :action => 'index'
  map.real_staffs 'real_staffs', :controller => 'real_staffs', :action => 'index'
  map.real_tech_parts 'real_tech_parts', :controller => 'real_tech_parts', :action => 'index'


  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.activate '/activate/:id', :controller => 'accounts', :action => 'show'
  map.forgot_password '/forgot_password', :controller => 'passwords', :action => 'new'
  map.reset_password '/reset_password/:id', :controller => 'passwords', :action => 'edit'
  map.change_password '/change_password', :controller => 'accounts', :action => 'edit'
  
  # See how all your routes lay out with "rake routes"
 
  map.resources :users, :member => { :enable => :put } do |users|
    users.resource :account
    users.resources :roles
  end
  
  map.resource :session
  map.resource :password
  map.resources :roles
  map.resources :users
  map.resources :sim_teams

  
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action.:format'
  
end
