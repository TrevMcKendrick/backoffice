class MoveStripeIdColumnToCompanies < ActiveRecord::Migration
  def change
    Customer.reset_column_information
    Company.reset_column_information

    Customer.all.each do |customer|
      customer.company.stripe_id = customer.stripe_id
    end

    remove_column :customers, :stripe_id
  end
end
