class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
		t.string :imagen
		t.string :nombre
		t.string :apellido
		t.string :correo
		t.integer :edad
		t.integer :tarjeta
		t.string :usuario
		t.string :contrasenia
		t.boolean :conectado
		t.timestamps
    end
  end
end
