json.array!(@involvements) do |involvement|
  json.extract! involvement, :id, :program_id, :work_id
  json.url involvement_url(involvement, format: :json)
end
