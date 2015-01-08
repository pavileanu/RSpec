json.array!(@messages) do |message|
  json.extract! message, :id, :text, :text,, :title, :string,
  json.url message_url(message, format: :json)
end
