json.array!(@sermons) do |sermon|
  json.extract! sermon, :id, :title, :scripture, :description
  json.url sermon_url(sermon, format: :json)
end
