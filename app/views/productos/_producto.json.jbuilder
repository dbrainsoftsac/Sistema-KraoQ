json.extract! producto, :id, :no_producto, :TipoProducto_id, :ss_precio_producto, :fl_disponible, :created_at, :updated_at
json.url producto_url(producto, format: :json)