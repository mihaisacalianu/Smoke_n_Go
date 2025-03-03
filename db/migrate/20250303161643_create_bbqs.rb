class CreateBbqs < ActiveRecord::Migration[7.1]
  def change
    create_table :bbqs do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :price
      t.string :brand
      t.string :fuel_type
      t.string :grill_size
      t.boolean :pick_up
      t.boolean :delivery
      t.string :dates_unavailable
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
