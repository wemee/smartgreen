class IlluminanceLogsController < ApplicationController
  before_action :set_illuminance_log, only: [:show, :edit, :update, :destroy]

  # GET /illuminance_logs
  # GET /illuminance_logs.json
  def index
    @illuminance_logs = IlluminanceLog.all
  end

  # GET /illuminance_logs/1
  # GET /illuminance_logs/1.json
  def show
  end

  # GET /illuminance_logs/new
  def new
    @illuminance_log = IlluminanceLog.new
  end

  # GET /illuminance_logs/1/edit
  def edit
  end

  # POST /illuminance_logs
  # POST /illuminance_logs.json
  def create
    @illuminance_log = IlluminanceLog.new(illuminance_log_params)

    respond_to do |format|
      if @illuminance_log.save
        format.html { redirect_to @illuminance_log, notice: 'Illuminance log was successfully created.' }
        format.json { render :show, status: :created, location: @illuminance_log }
      else
        format.html { render :new }
        format.json { render json: @illuminance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illuminance_logs/1
  # PATCH/PUT /illuminance_logs/1.json
  def update
    respond_to do |format|
      if @illuminance_log.update(illuminance_log_params)
        format.html { redirect_to @illuminance_log, notice: 'Illuminance log was successfully updated.' }
        format.json { render :show, status: :ok, location: @illuminance_log }
      else
        format.html { render :edit }
        format.json { render json: @illuminance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illuminance_logs/1
  # DELETE /illuminance_logs/1.json
  def destroy
    @illuminance_log.destroy
    respond_to do |format|
      format.html { redirect_to illuminance_logs_url, notice: 'Illuminance log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illuminance_log
      @illuminance_log = IlluminanceLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illuminance_log_params
      params.require(:illuminance_log).permit(:sensor_id, :value, :date_time)
    end
end
