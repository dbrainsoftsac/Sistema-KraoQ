json.extract! cancion, :id, :no_cancion, :no_artista_cancion, :created_at, :updated_at
json.url cancion_url(cancion, format: :json)