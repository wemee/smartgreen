class HumidityLogsController < ApplicationController
  before_action :set_humidity_log, only: [:show, :edit, :update, :destroy]

  # GET /humidity_logs
  # GET /humidity_logs.json
  def index
    @humidity_logs = HumidityLog.all
  end

  # GET /humidity_logs/1
  # GET /humidity_logs/1.json
  def show
  end

  # GET /humidity_logs/new
  def new
    @humidity_log = HumidityLog.new
  end

  # GET /humidity_logs/1/edit
  def edit
  end

  # POST /humidity_logs
  # POST /humidity_logs.json
  def create
    @humidity_log = HumidityLog.new(humidity_log_params)

    respond_to do |format|
      if @humidity_log.save
        format.html { redirect_to @humidity_log, notice: 'Humidity log was successfully created.' }
        format.json { render :show, status: :created, location: @humidity_log }
      else
        format.html { render :new }
        format.json { render json: @humidity_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humidity_logs/1
  # PATCH/PUT /humidity_logs/1.json
  def update
    respond_to do |format|
      if @humidity_log.update(humidity_log_params)
        format.html { redirect_to @humidity_log, notice: 'Humidity log was successfully updated.' }
        format.json { render :show, status: :ok, location: @humidity_log }
      else
        format.html { render :edit }
        format.json { render json: @humidity_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humidity_logs/1
  # DELETE /humidity_logs/1.json
  def destroy
    @humidity_log.destroy
    respond_to do |format|
      format.html { redirect_to humidity_logs_url, notice: 'Humidity log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humidity_log
      @humidity_log = HumidityLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humidity_log_params
      params.require(:humidity_log).permit(:sensor_id, :value, :date_time)
    end
end
