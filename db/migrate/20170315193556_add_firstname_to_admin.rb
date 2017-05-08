class AddFirstnameToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :Firstname, :string
  end
end
