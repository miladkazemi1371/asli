json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :program_id, :user_id, :duration
  json.url exercise_url(exercise, format: :json)
end
