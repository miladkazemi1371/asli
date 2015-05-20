class PerformedsController < ApplicationController
  before_action :set_performed, only: [:show, :edit, :update, :destroy]

  # GET /performeds
  # GET /performeds.json
  def index
    @performeds = Performed.all
  end

  # GET /performeds/1
  # GET /performeds/1.json
  def show
  end

  # GET /performeds/new
  def new
    @performed = Performed.new
  end

  # GET /performeds/1/edit
  def edit
  end

  # POST /performeds
  # POST /performeds.json
  def create
    @performed = Performed.new(performed_params)

    respond_to do |format|
      if @performed.save
        format.html { redirect_to @performed, notice: 'Performed was successfully created.' }
        format.json { render :show, status: :created, location: @performed }
      else
        format.html { render :new }
        format.json { render json: @performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performeds/1
  # PATCH/PUT /performeds/1.json
  def update
    respond_to do |format|
      if @performed.update(performed_params)
        format.html { redirect_to @performed, notice: 'Performed was successfully updated.' }
        format.json { render :show, status: :ok, location: @performed }
      else
        format.html { render :edit }
        format.json { render json: @performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performeds/1
  # DELETE /performeds/1.json
  def destroy
    @performed.destroy
    respond_to do |format|
      format.html { redirect_to performeds_url, notice: 'Performed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed
      @performed = Performed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performed_params
      params.require(:performed).permit(:device_id, :work_id)
    end
end
