class RenameLocationToAddress < ActiveRecord::Migration[7.1]
  def change
    rename_column :bbqs, :location, :address
  end
end
