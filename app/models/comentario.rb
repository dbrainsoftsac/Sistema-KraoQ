class Comentario < ActiveRecord::Base
  belongs_to :Local
  belongs_to :Sala
  belongs_to :Usuario
end
