class LeoPlugLogsController < ApplicationController
  before_action :set_leo_plug_log, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @leo_plug_logs = LeoPlugLog.all
    # respond_with(@leo_plug_logs)
  end

  def show
    # respond_with(@leo_plug_log)
  end

  def new
    @leo_plug_log = LeoPlugLog.new
    respond_with(@leo_plug_log)
  end

  def edit
  end

  def create
    @leo_plug_log = LeoPlugLog.new(leo_plug_log_params)
    @leo_plug_log.save
    respond_with(@leo_plug_log)
  end

  def update
    @leo_plug_log.update(leo_plug_log_params)
    respond_with(@leo_plug_log)
  end

  def destroy
    @leo_plug_log.destroy
    respond_with(@leo_plug_log)
  end

  private
    def set_leo_plug_log
      @leo_plug_log = LeoPlugLog.find(params[:id])
    end

    def leo_plug_log_params
      params.require(:leo_plug_log).permit(:sensor_id, :outlet_id, :date_time, :device, :standby_watt, :voltage, :amp, :power, :energy, :power_on_off, :reactive_power)
    end
end
