Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => 'users/registrations' }

  resources :opcionais

  root  'static_pages#home'
  match '/home',    to: 'static_pages#home',    via: 'get', as: 'home'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/cadastro_usuario', to: 'static_pages#cadastro_usuario', via: 'get'

  match '/cadastro_perfil_locadora', to: 'locadoras#cadastro_perfil_locadora', via: [:get, :post]
  #match '/cadastro_perfil_locadora_2', to: 'locadoras#cadastro_perfil_locadora_2', via: 'get'

  match '/cadastro_perfil_cliente', to: 'clientes#cadastro_perfil_cliente', via: [:get, :post]

  match '/lista_carros', to: 'static_pages#lista_carros', via: 'get', as: 'lista_carros'
  match '/lista_motos', to: 'static_pages#lista_motos', via: 'get', as: 'lista_motos'
  match '/lista_4x4', to: 'static_pages#lista_4x4', via: 'get', as: 'lista_4x4'
  match '/lista_van', to: 'static_pages#lista_van', via: 'get', as: 'lista_van'

  #Dashboard
  match '/admin_index', to: 'dashboard#admin_index', via: 'get'
  match '/cliente_index', to: 'dashboard#cliente_index', via: 'get'
  match '/locadora_index', to: 'dashboard#locadora_index', via: 'get'

  resources :dashboard
  
  resources :alugueis

  resources :clientes

  resources :categorias

  resources :veiculos

  resources :garagens

  resources :locadoras

  resources :enderecos

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
