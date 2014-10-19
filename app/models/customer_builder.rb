class CustomerBuilder
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :email, :company

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @email = hash[:email]
    @company = hash[:company]
    binding.pry
  end

  def with_token(token)
    customer = Stripe::Customer.create(:card => token, :email => self.email, :description => self.company)
    save_customer(customer)
  end

  def save_customer(customer)
    new_customer = Customer.new(
    :first_name => self.first_name,
    :last_name => self.last_name,
    :email => self.email,
    :stripe_id => customer.id
    )
    new_customer
  end

end
