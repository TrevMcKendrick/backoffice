class WorkspacesController < ApplicationController

  def show
    @customers = Customer.all
  end

  private

  def workspace_params
  end

end
