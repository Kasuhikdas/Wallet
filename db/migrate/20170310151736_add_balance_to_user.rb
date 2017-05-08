class AddBalanceToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Balance, :integer, null: false, default: "0"
  end
end
