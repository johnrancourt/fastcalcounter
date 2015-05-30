json.array!(@wights) do |wight|
  json.extract! wight, :id, :user_id, :wegiht
  json.url wight_url(wight, format: :json)
end
