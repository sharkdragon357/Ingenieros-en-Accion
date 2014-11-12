class AddDescripcionToMonstruo < ActiveRecord::Migration
  def change
    add_column :monstruos, :descripcion, :string
  end
end
