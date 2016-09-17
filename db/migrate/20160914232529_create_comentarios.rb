class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.belongs_to :Local, index: true, foreign_key: true
      t.belongs_to :Sala, index: true, foreign_key: true
      t.belongs_to :Usuario, index: true, foreign_key: true
      t.text :tx_comentario
      t.integer :qt_estrellas

      t.timestamps null: false
    end
  end
end
