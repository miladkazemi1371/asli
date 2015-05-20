json.array!(@profiles) do |profile|
  json.extract! profile, :id, :firstname, :lastname, :age, :gender, :height, :weight, :email, :user_id
  json.url profile_url(profile, format: :json)
end
