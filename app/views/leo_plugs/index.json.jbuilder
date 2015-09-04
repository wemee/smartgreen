json.array!(@leo_plugs) do |leo_plug|
  json.extract! leo_plug, :id, :mac, :school, :brand, :voltage
  json.url leo_plug_url(leo_plug, format: :json)
end
