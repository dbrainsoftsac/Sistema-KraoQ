class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.text :no_producto
      t.belongs_to :TipoProducto, index: true, foreign_key: true
      t.decimal :ss_precio_producto
      t.boolean :fl_disponible

      t.timestamps null: false
    end
  end
end
