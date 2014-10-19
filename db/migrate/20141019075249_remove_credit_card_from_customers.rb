class RemoveCreditCardFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :credit_card
  end
end
