class RemoveBillingAddressFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :billing_address, foreign_key: true
  end
end
