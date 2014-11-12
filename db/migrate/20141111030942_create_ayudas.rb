class CreateAyudas < ActiveRecord::Migration
  def change
    create_table :ayudas do |t|

      t.timestamps
    end
  end
end
