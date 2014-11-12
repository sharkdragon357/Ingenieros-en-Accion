class AddCritterStarToMonstruo < ActiveRecord::Migration
  def change
    add_column :monstruos, :critter_star, :boolean, default: false
  end
end
