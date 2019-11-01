class CreateChairs < ActiveRecord::Migration[5.0]
  def change
    create_table :chairs do |t|
      t.string :name
      t.string :function
      t.string :img
      t.string :description
      t.integer :price
    end
  end
end
