class LeoPlugsController < ApplicationController
  before_action :set_leo_plug, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @leo_plugs = LeoPlug.all
    # respond_with(@leo_plugs)
  end

  def show
    # respond_with(@leo_plug)
  end

  def new
    @leo_plug = LeoPlug.new
    respond_with(@leo_plug)
  end

  def edit
  end

  def create
    @leo_plug = LeoPlug.new(leo_plug_params)
    @leo_plug.save
    respond_with(@leo_plug)
  end

  def update
    @leo_plug.update(leo_plug_params)
    respond_with(@leo_plug)
  end

  def destroy
    @leo_plug.destroy
    respond_with(@leo_plug)
  end

  private
    def set_leo_plug
      @leo_plug = LeoPlug.find(params[:id])
    end

    def leo_plug_params
      params.require(:leo_plug).permit(:mac, :school, :brand, :voltage)
    end
end
