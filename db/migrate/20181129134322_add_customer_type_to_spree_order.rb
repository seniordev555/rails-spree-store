class AddCustomerTypeToSpreeOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_orders, :customer_type, :integer, default: 0
  end
end
