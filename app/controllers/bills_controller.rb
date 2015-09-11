class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
    @bill = bill.find(params[:id])
  end

end
