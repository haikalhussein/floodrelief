json.array!(@goods) do |good|
  json.extract! good, :id, :item, :quantity, :received_date, :received_from
  json.url good_url(good, format: :json)
end
