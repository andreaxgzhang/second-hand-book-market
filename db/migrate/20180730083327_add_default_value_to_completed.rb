class AddDefaultValueToCompleted < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :completed, :boolean, default: false
  end
end
