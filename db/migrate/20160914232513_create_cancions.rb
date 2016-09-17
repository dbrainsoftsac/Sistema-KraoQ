class CreateCancions < ActiveRecord::Migration
  def change
    create_table :cancions do |t|
      t.text :no_cancion
      t.text :no_artista_cancion

      t.timestamps null: false
    end
  end
end
