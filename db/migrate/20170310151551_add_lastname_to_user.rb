class AddLastnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Lastname, :string, null: false, default: ""
  end
end
