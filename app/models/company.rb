class Company < ActiveRecord::Base
  has_many :users
  has_one :subscription

  def stripe_customer_object
    Stripe::Customer.retrieve(self.stripe_id)
  end
end
