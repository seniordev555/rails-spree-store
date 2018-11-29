Spree::Address.class_eval do
  _validators.reject!{ |key, value| key == :zipcode || key == :city || key == :lastname }
  _validate_callbacks.each do |callback|
    if callback.raw_filter.respond_to?(:attributes)
      callback.raw_filter.attributes.reject! { |key| key == :zipcode || key == :city || key == :lastname }
    end
  end
end
