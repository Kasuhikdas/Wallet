class AddNumberToRecharge < ActiveRecord::Migration[5.0]
  def change
  	add_column :recharges, :number, :string

  end
end
