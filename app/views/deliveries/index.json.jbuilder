json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :sender, :reciever, :from, :to, :contents
  json.url delivery_url(delivery, format: :json)
end
