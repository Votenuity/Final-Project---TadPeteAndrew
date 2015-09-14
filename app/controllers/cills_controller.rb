class CillsController < ApplicationController
  before_action :set_cill, only: [:show, :edit, :update, :destroy]

  def index
    @cills = Cill.all
  end

  def show

  end

  def new
    @cill = Cill.new
  end

  def edit
  end

  def create
    @cill = Cill.new(cill_params)

    respond_to do |format|
      if @cill.save
        format.html { redirect_to @cill, notice: 'Cill was successfully created.' }
        format.json { render :show, status: :created, location: @cill }
      else
        format.html { render :new }
        format.json { render json: @cill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cill.update(cill_params)
        format.html { redirect_to @cill, notice: 'Cill was successfully updated.' }
        format.json { render :show, status: :ok, location: @cill }
      else
        format.html { render :edit }
        format.json { render json: @cill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cill.destroy
    respond_to do |format|
      format.html { redirect_to cills_url, notice: 'Cill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_cill
      @cill = Cill.find_by_billName(params[:id])
    end

    def cill_params
      params[:cill]
    end
end
