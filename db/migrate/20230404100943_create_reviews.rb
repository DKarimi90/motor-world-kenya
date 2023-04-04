class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :car_id
      t.string :rating
      t.string :comments

      t.timestamps
    end
  end
end
