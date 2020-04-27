class PagesController < ApplicationController

  def home
    @user = Customer.first
    @batches = Batch.all
  end


end
