class AddPhotoToTransaction < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :photo, :string
  end
end
