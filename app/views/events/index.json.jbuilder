json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :description, :address, :image
  json.url event_url(event, format: :json)
end
