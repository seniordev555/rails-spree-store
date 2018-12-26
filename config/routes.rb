Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Spree::Core::Engine.routes.draw do
    get 'show_invoice', action: :show_invoice, controller: :orders
    get 'show_contract', action: :show_contract, controller: :orders
    get 'contact_us', action: :contact_us, controller: :static_page
    get 'about_us', action: :about_us, controller: :static_page
  end
end
