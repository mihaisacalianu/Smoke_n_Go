class RenameLocationToAddress2 < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :location, :address
  end
end
