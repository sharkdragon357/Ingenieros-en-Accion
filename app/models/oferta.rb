class Oferta < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :subasta  

  default_scope -> { order("created_at desc") }
end
