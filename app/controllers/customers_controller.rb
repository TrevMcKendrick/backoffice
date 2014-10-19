class CustomersController < ApplicationController

  def create
    @customer = CustomerBuilder.new(customer_params).with_token(params[:stripeToken])
    respond_to do |format|
      if @customer.valid?
        @customer.save
        format.html { redirect_to customer_info_url, notice: 'Your information was saved! Welcome to BackOffice.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { redirect_to customer_info_url, notice: "Your information was NOT saved successfully. Please try again." }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :card_number, :cvc, :month_exp, :year_exp)
  end


end
