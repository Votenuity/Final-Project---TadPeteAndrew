class LegislatorsController < ApplicationController
  before_action :set_legislator, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search_item]
      @legislators15 = Legislator.search_by_full_name(params[:search_item]).where(session: "2015")
      @legislators14 = Legislator.search_by_full_name(params[:search_item]).where(session: "2014")
    else
      @legislators15 = Legislator.where(session: "2015").order(lastName: :asc)
      @legislators14 = Legislator.where(session: "2014").order(lastName: :asc)
    end
  end

  def show
    @bill = Bill.where(billName: params[:billName])
  end

  def new
    @legislator = Legislator.new
  end

  def edit
  end

  def create
    @legislator = Legislator.new(legislator_params)

    respond_to do |format|
      if @legislator.save
        format.html { redirect_to @legislator, notice: 'Legislator was successfully created.' }
        format.json { render :show, status: :created, location: @legislator }
      else
        format.html { render :new }
        format.json { render json: @legislator.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @legislator.update(legislator_params)
        format.html { redirect_to @legislator, notice: 'Legislator was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislator }
      else
        format.html { render :edit }
        format.json { render json: @legislator.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @legislator.destroy
    respond_to do |format|
      format.html { redirect_to legislators_url, notice: 'Legislator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_legislator
      @legislator = Legislator.find(params[:id])
    end

    def legislator_params
      params.require(:legislator).permit(:position_title, :firstName, :lastName, :party, :link, :fullName)
    end
end
