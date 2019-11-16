class CreateChairs < ActiveRecord::Migration[5.0]
  def change
    create_table :chairs do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.string :function
      t.string :img
      t.string :description
      t.integer :price
      t.integer :quantity
    end
  end
end
