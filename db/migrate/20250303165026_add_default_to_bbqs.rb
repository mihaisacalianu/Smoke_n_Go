class AddDefaultToBbqs < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bbqs, :pick_up, from: nil, to: true
    change_column_default :bbqs, :delivery, from: nil, to: false
  end
end
