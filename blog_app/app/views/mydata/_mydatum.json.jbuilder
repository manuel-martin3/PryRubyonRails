json.extract! mydatum, :id, :name, :lastname, :created_at, :updated_at
json.url mydatum_url(mydatum, format: :json)
