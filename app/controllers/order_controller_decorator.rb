Spree::OrdersController.class_eval do
  private 

  def order_params
    if params[:order]
      params[:order].permit(*permitted_order_attributes, :customer_type)
    else
      {}
    end
  end
end
