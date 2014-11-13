class Subscription < ActiveRecord::Base
  belongs_to :company

  def current_period_end

  end

  def current_period_start
  end

  def stripe_subscription
    # self.company
  end
end
