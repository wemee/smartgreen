json.array!(@illuminance_logs) do |illuminance_log|
  json.extract! illuminance_log, :id, :sensor_id, :value, :date_time
  json.url illuminance_log_url(illuminance_log, format: :json)
end
