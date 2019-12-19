class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :vote
      t.integer :movie_id
      t.integer :user_id

      t.timestamps
    end
  end
end
