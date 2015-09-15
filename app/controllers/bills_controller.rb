class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    @bills = bill.all
  end

  def show

  end

  def new
    @bill = bill.new
  end

  def create
    @bill = bill.new(bill_params)
  end

  private

    def set_bill
      @bill = bill.find_by_billName(params[:id])
    end

    def bill_params
      params[:bill]
    end
end
end
