class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.string :user_email
      t.integer :amount

      t.timestamps
    end
  end
end
