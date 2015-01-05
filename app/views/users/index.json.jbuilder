json.array!(@users) do |user|
  json.extract! user, :id, :title, :name, :contact_no, :district, :mukim
  json.url user_url(user, format: :json)
end
