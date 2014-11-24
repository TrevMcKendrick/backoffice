class Company < ActiveRecord::Base
  has_many :users
  has_one :subscription

  def stripe_customer_object
    Stripe::Customer.retrieve(self.stripe_id)
  end

  def toggl_id
  	read_attribute(:toggl_id) || update(:toggl_id => TogglRequester.new.client_id(self.name))
  end
end
