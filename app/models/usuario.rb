class Usuario < ActiveRecord::Base
	has_many :ofertas
	has_many :subastas
	default_scope -> { order("created_at desc") }
	validates_uniqueness_of :usuario, message: "Ya existe un usuario con ese nombre"
	validates_exclusion_of :edad, in: 0...21, message: "Debes ser mayor a 21"
end

