json.array!(@humidity_logs) do |humidity_log|
  json.extract! humidity_log, :id, :sensor_id, :value, :date_time
  json.url humidity_log_url(humidity_log, format: :json)
end
