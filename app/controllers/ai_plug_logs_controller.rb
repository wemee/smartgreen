class AiPlugLogsController < ApplicationController
  before_action :set_ai_plug_log, only: [:show, :edit, :update, :destroy]

  # GET /ai_plug_logs
  # GET /ai_plug_logs.json
  def index
    @ai_plug_logs = AiPlugLog.all
  end

  # GET /ai_plug_logs/1
  # GET /ai_plug_logs/1.json
  def show
  end

  # GET /ai_plug_logs/new
  def new
    @ai_plug_log = AiPlugLog.new
  end

  # GET /ai_plug_logs/1/edit
  def edit
  end

  # POST /ai_plug_logs
  # POST /ai_plug_logs.json
  def create
    @ai_plug_log = AiPlugLog.new(ai_plug_log_params)

    respond_to do |format|
      if @ai_plug_log.save
        format.html { redirect_to @ai_plug_log, notice: 'Ai plug log was successfully created.' }
        format.json { render :show, status: :created, location: @ai_plug_log }
      else
        format.html { render :new }
        format.json { render json: @ai_plug_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ai_plug_logs/1
  # PATCH/PUT /ai_plug_logs/1.json
  def update
    respond_to do |format|
      if @ai_plug_log.update(ai_plug_log_params)
        format.html { redirect_to @ai_plug_log, notice: 'Ai plug log was successfully updated.' }
        format.json { render :show, status: :ok, location: @ai_plug_log }
      else
        format.html { render :edit }
        format.json { render json: @ai_plug_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ai_plug_logs/1
  # DELETE /ai_plug_logs/1.json
  def destroy
    @ai_plug_log.destroy
    respond_to do |format|
      format.html { redirect_to ai_plug_logs_url, notice: 'Ai plug log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ai_plug_log
      @ai_plug_log = AiPlugLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ai_plug_log_params
      params.require(:ai_plug_log).permit(:sensor_id, :outlet_id, :attrid_val, :date_time, :user_name, :device, :install_time, :standby_watt)
    end
end
