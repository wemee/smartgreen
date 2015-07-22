json.array!(@ai_plug_logs) do |ai_plug_log|
  json.extract! ai_plug_log, :id, :sensor_id, :outlet_id, :attrid_val, :date_time, :user_name, :device, :install_time, :standby_watt
  json.url ai_plug_log_url(ai_plug_log, format: :json)
end
