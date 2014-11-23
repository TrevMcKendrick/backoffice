class Subscription < ActiveRecord::Base
  belongs_to :company

  def current_period_start
    stripe_subscription.current_period_start
  end

  def current_period_end
    stripe_subscription.current_period_end
  end

  def size
    self.company.stripe_customer_object.subscriptions.data.first.plan[:id][0,2].to_i
  end

  def hours_remaining
    
  end

  private

  def stripe_subscription
    self.company.stripe_customer_object.subscriptions.data.first
  end

end
