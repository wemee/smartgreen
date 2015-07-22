class AirQualityLogsController < ApplicationController
  before_action :set_air_quality_log, only: [:show, :edit, :update, :destroy]

  # GET /air_quality_logs
  # GET /air_quality_logs.json
  def index
    @air_quality_logs = AirQualityLog.all
  end

  # GET /air_quality_logs/1
  # GET /air_quality_logs/1.json
  def show
  end

  # GET /air_quality_logs/new
  def new
    @air_quality_log = AirQualityLog.new
  end

  # GET /air_quality_logs/1/edit
  def edit
  end

  # POST /air_quality_logs
  # POST /air_quality_logs.json
  def create
    @air_quality_log = AirQualityLog.new(air_quality_log_params)

    respond_to do |format|
      if @air_quality_log.save
        format.html { redirect_to @air_quality_log, notice: 'Air quality log was successfully created.' }
        format.json { render :show, status: :created, location: @air_quality_log }
      else
        format.html { render :new }
        format.json { render json: @air_quality_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_quality_logs/1
  # PATCH/PUT /air_quality_logs/1.json
  def update
    respond_to do |format|
      if @air_quality_log.update(air_quality_log_params)
        format.html { redirect_to @air_quality_log, notice: 'Air quality log was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_quality_log }
      else
        format.html { render :edit }
        format.json { render json: @air_quality_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_quality_logs/1
  # DELETE /air_quality_logs/1.json
  def destroy
    @air_quality_log.destroy
    respond_to do |format|
      format.html { redirect_to air_quality_logs_url, notice: 'Air quality log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality_log
      @air_quality_log = AirQualityLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_quality_log_params
      params.require(:air_quality_log).permit(:sensor_id, :value, :date_time)
    end
end
