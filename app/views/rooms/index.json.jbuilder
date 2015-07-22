json.array!(@rooms) do |room|
  json.extract! room, :id, :label, :school_id
  json.url room_url(room, format: :json)
end
