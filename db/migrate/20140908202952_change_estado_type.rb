class ChangeEstadoType < ActiveRecord::Migration
  def change
  	change_column :tweets, :estado, :text
  end
end
