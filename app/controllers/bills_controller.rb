class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search_bill]
      @search = Bill.search_by_info(params[:search_bill])
      if @search.blank?
        respond_to do |format|
          format.html {
            flash[:notice] = 'We were unable to locate your search results'
            redirect_to(:controller => 'bills', :action => 'index')
          }
        end
      end
    else
      sessions_for_bills
    end
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
      if params[:session] == "2015" || params[:session] == "2014"
        @bills = Bill.where(session: params[:session])
      else 
        params[:session] = nil
        @bills = Bill.all
      end
    end

    def set_bill
      @bill = Bill.where(:session => params[:session]).where(:billName => params[:billName]).first
    end

    def bill_params
      params[:bill]
    end
end
