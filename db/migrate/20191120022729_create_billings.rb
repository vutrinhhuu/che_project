class CreateBillings < ActiveRecord::Migration[5.0]
  def change
    create_table :billings do |t|
      t.decimal :total, precision: 12, scale: 3
      t.string :address
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
