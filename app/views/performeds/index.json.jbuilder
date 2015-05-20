json.array!(@performeds) do |performed|
  json.extract! performed, :id, :device_id, :work_id
  json.url performed_url(performed, format: :json)
end
