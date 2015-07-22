json.array!(@air_quality_logs) do |air_quality_log|
  json.extract! air_quality_log, :id, :sensor_id, :value, :date_time
  json.url air_quality_log_url(air_quality_log, format: :json)
end
