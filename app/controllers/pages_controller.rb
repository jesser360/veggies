class PagesController < ApplicationController

  def home
    @user = Customer.first
    @batches = Batch.all
    @customer = Customer.first
    @orders = @customer.orders
  end


end
