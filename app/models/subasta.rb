class Subasta < ActiveRecord::Base
  has_many :ofertas
  belongs_to :usuario
  

  default_scope -> { order("created_at desc") }
end
