json.array!(@workouts) do |workout|
  json.extract! workout, :id, :name, :avatar
  json.url workout_url(workout, format: :json)
end
