class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :estado
      t.integer :monstruo_id

      t.timestamps
    end
  end
end
