class CillsController < ApplicationController
  before_action :set_cill, only: [:show, :edit, :update, :destroy]

  # GET /cills
  # GET /cills.json
  def index
    @cills = Cill.all
  end

  # GET /cills/1
  # GET /cills/1.json
  def show
  end

  # GET /cills/new
  def new
    @cill = Cill.new
  end

  # GET /cills/1/edit
  def edit
  end

  # POST /cills
  # POST /cills.json
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

  # PATCH/PUT /cills/1
  # PATCH/PUT /cills/1.json
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

  # DELETE /cills/1
  # DELETE /cills/1.json
  def destroy
    @cill.destroy
    respond_to do |format|
      format.html { redirect_to cills_url, notice: 'Cill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cill
      @cill = Cill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cill_params
      params[:cill]
    end
end
