class Comentario < ApplicationRecord
  belongs_to :avaliacaoob
  has_many :votos
end
