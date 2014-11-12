class CreateSesions < ActiveRecord::Migration
  def change
    create_table :sesions do |t|
		t.string :usuario
		t.string :contrasenia
		t.timestamps
    end
  end
end
