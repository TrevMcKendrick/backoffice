class Subscription < ActiveRecord::Base
  belongs_to :company

  def current_period_start
    stripe_subscription.current_period_start
  end

  def current_period_end
    stripe_subscription.current_period_end
  end

  private
  
  def stripe_subscription
    self.company.stripe_customer_object.subscriptions.data.first
  end

end
