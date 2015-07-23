json.array!(@leo_plug_logs) do |leo_plug_log|
  json.extract! leo_plug_log, :id, :sensor_id, :outlet_id, :date_time, :device, :standby_watt, :voltage, :amp, :power, :energy, :power_on_off, :reactive_power
  json.url leo_plug_log_url(leo_plug_log, format: :json)
end
