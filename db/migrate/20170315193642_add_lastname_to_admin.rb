class AddLastnameToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :Lastname, :string
  end
end
