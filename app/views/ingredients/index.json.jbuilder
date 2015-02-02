json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :sender, :reciever, :from, :to, :contents
  json.url ingredient_url(ingredient, format: :json)
end
