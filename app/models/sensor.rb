class Sensor < ActiveRecord::Base
  belongs_to :type
  belongs_to :room

  has_many :ai_plug_logs
  has_many :humidity_logs
  has_many :air_quality_logs
  has_many :temperature_logs
  has_many :lluminance_logs
end
