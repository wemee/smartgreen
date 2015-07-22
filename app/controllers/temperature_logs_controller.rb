class TemperatureLogsController < ApplicationController
  before_action :set_temperature_log, only: [:show, :edit, :update, :destroy]

  # GET /temperature_logs
  # GET /temperature_logs.json
  def index
    @temperature_logs = TemperatureLog.all
  end

  # GET /temperature_logs/1
  # GET /temperature_logs/1.json
  def show
  end

  # GET /temperature_logs/new
  def new
    @temperature_log = TemperatureLog.new
  end

  # GET /temperature_logs/1/edit
  def edit
  end

  # POST /temperature_logs
  # POST /temperature_logs.json
  def create
    @temperature_log = TemperatureLog.new(temperature_log_params)

    respond_to do |format|
      if @temperature_log.save
        format.html { redirect_to @temperature_log, notice: 'Temperature log was successfully created.' }
        format.json { render :show, status: :created, location: @temperature_log }
      else
        format.html { render :new }
        format.json { render json: @temperature_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temperature_logs/1
  # PATCH/PUT /temperature_logs/1.json
  def update
    respond_to do |format|
      if @temperature_log.update(temperature_log_params)
        format.html { redirect_to @temperature_log, notice: 'Temperature log was successfully updated.' }
        format.json { render :show, status: :ok, location: @temperature_log }
      else
        format.html { render :edit }
        format.json { render json: @temperature_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temperature_logs/1
  # DELETE /temperature_logs/1.json
  def destroy
    @temperature_log.destroy
    respond_to do |format|
      format.html { redirect_to temperature_logs_url, notice: 'Temperature log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature_log
      @temperature_log = TemperatureLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temperature_log_params
      params.require(:temperature_log).permit(:sensor_id, :value, :date_time)
    end
end
