# encoding = utf-8
class UsuariosController < ApplicationController
  
  def new
  	@usuario = Usuario.new
  end

  def create
	@u = Usuario.new(usuario_params)
	@u.save
	redirect_to('/usuario_validar')
  end
  
  def change
  end
  
  def validar
  end
	
  def default    
  end
  
  def index
  end

  def show
  end
  
  private
  def usuario_params
    params.require(:usuario).permit(:imagen, :nombre, :apellido, :correo, :edad, :tarjeta, :usuario, :contrasenia)
  end

end
