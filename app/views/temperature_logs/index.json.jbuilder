json.array!(@temperature_logs) do |temperature_log|
  json.extract! temperature_log, :id, :sensor_id, :value, :date_time
  json.url temperature_log_url(temperature_log, format: :json)
end
