class CreateRecharges < ActiveRecord::Migration[5.0]
  def change
    create_table :recharges do |t|
      t.integer :user_id
      t.integer :operator_id
      t.integer :amount

      t.timestamps
    end
  end
end
