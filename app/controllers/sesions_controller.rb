class SesionsController < ApplicationController

	def new
		@sesion = Sesion.new
	end
	
	def create
		@sesion = Sesion.new(sesion_params)
		@sesion.save
		redirect_to('/sesion_validar')
	end

	def validar
		@sesion = Sesion.first
		@usuarios = Usuario.all
		@valido = false
		@usuarios.each do |u|
			if (@sesion.usuario == u.usuario and @sesion.contrasenia == u.contrasenia)
				@usuario = u
				@usuario.conectado = true
				@valido = true
			end
			break if @valido == true
		end
		if (@valido == false)
			@sesion.destroy
		end
	end
	
	def destroy
		@sesion.destroy
		@usuario.conectado = false
	end
	
	private
	def sesion_params
		params.require(:sesion).permit(:usuario, :contrasenia)
	end

end
