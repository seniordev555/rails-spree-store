module Spree
  class StaticPageController < Spree::StoreController
    def contact_us
      render "contact_us"
    end

    def about_us
      render "about_us"
    end
  end
end