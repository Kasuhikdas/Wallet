class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :operator_id
      t.integer :amount
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
