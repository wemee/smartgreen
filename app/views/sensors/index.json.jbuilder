json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :type_id, :room_id
  json.url sensor_url(sensor, format: :json)
end
