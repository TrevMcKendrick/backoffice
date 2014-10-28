class MoveStripeIdColumnToCompanies < ActiveRecord::Migration
  def change
    Customer.find_each do |customer|
      customer.company.stripe_id = customer.stripe_id
    end

    remove_column :customers, :stripe_id
  end
end
