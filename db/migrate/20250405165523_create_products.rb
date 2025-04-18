class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.belongs_to :store, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
