class Sesion < ActiveRecord::Base
	validates_uniqueness_of :usuario, message: "Ya existe un usuario conectado con ese nombre"
	default_scope -> { order("created_at desc") }
end
