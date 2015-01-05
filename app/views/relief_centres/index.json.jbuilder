json.array!(@relief_centres) do |relief_centre|
  json.extract! relief_centre, :id, :name, :address, :gps_coordinate
  json.url relief_centre_url(relief_centre, format: :json)
end
