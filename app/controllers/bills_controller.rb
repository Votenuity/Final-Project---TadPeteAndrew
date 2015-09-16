class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    sessions_for_bills
  end

  def show

  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sessions_for_bills
      if params[:session] == "2015"
        @bills = Bill.where(session: "2015")
      elsif params[:session] == "2014"
        @bills = Bill.where(session: "2014")
      elsif params[:session] != "2015" || "2014"
        redirect_to root_path, notice: "You must specify session 2014 or 2015."
        @bills = Bill.all
      else
        @bills = Bill.all
      end
    end

    def set_bill
      @bill = Bill.find_by_billName(params[:id])
    end

    def bill_params
      params[:bill]
    end
end
