class AddFirstnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Firstname, :string ,null: false, default: ""
  end
end
