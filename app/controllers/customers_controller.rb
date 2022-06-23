class CustomersController < ApplicationController
  def index
  end

  def show
    @customer = Customer.new
  end

end
