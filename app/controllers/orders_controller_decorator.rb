Spree::OrdersController.class_eval do
  skip_before_action :check_authorization, only: [:show_invoice, :show_contract]

  def show_invoice
    @order = Spree::Order.includes(line_items: [variant: [:option_values, :images, :product]], bill_address: :state, ship_address: :state).find_by!(number: params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'invoice.pdf', template: 'spree/orders/invoice_pdf.html.erb', layout: 'pdf.html.erb'
      end
    end
  end

  def show_contract
    @order = Spree::Order.includes(line_items: [variant: [:option_values, :images, :product]], bill_address: :state, ship_address: :state).find_by!(number: params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'contract.pdf', template: 'spree/orders/contract_pdf.html.erb', layout: 'pdf.html.erb'
      end
    end
  end
end
