class CustomerBuilder
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :email, :token

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @email = hash[:email]
  end

  def with_token(token)
    customer = Stripe::Customer.create(:card => token, :description => self.email)
    save_customer(customer)
  end

  def save_customer(customer)
    saved_customer = Customer.create(
    :first_name => self.first_name,
    :last_name => self.last_name,
    :email => self.email,
    :stripe_id => customer.id
    )
    saved_customer
  end

end
