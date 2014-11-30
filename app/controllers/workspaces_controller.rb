class WorkspacesController < ApplicationController
skip_before_filter :authenticate_employee!, :only => [:show]

  def show
    @customers = Customer.all
  end

  private

  def workspace_params
  end

end
