json.array!(@devices) do |device|
  json.extract! device, :id, :name, :price, :description, :workout_id
  json.url device_url(device, format: :json)
end
