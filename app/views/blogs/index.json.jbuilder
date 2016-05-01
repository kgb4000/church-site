json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :date, :post
  json.url blog_url(blog, format: :json)
end
