json.array!(@logs) do |log|
  json.extract! log, :id, :ndbno, :amount, :user_id
  json.url log_url(log, format: :json)
end
