json.array!(@types) do |type|
  json.extract! type, :id, :label
  json.url type_url(type, format: :json)
end
