Spree::Order.class_eval do
  enum customer_type: [:individual, :entity]

  validates :customer_type, presence: true

  with_options presence: true, if: :validations_required? do
    validates :payer_account_number
    validates :representative_position
    validates :grounds
    validates :bank_name
    validates :bank_address
    validates :checking_account
    validates :bic
  end

  checkout_flow do
    go_to_state :type_selection
    go_to_state :address
    go_to_state :payment, if: lambda { |order| order.payment_required? }
    go_to_state :confirm
    go_to_state :complete
  end

  def payment_required?
    false
  end

  def validations_required?
    entity? && complete?
  end
end
