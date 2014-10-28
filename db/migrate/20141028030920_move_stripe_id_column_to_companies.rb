class MoveStripeIdColumnToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :stripe_id, :string

    Customer.all.each do |customer|
      customer.company.stripe_id = customer.stripe_id
    end

    remove_column :customers, :stripe_id
  end
end
