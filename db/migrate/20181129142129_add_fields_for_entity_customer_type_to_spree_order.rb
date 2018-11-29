class AddFieldsForEntityCustomerTypeToSpreeOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_orders, :payer_account_number, :string
    add_column :spree_orders, :representative_position, :string
    add_column :spree_orders, :grounds, :string
    add_column :spree_orders, :bank_name, :string
    add_column :spree_orders, :bank_address, :string
    add_column :spree_orders, :checking_account, :string
    add_column :spree_orders, :bic, :string
  end
end
