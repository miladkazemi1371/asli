json.array!(@counters) do |counter|
  json.extract! counter, :id, :count
  json.url counter_url(counter, format: :json)
end
