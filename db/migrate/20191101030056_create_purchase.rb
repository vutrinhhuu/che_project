class CreatePurchase < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :chair_id
      t.integer :user_id
    end
  end
end
