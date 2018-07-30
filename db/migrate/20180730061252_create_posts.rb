class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.integer :price
      t.string :course_number
      t.string :professor
      t.boolean :confirmed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
