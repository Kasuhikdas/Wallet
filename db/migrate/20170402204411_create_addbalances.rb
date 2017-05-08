class CreateAddbalances < ActiveRecord::Migration[5.0]
  def change
    create_table :addbalances do |t|
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
