class AddDobToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :Dob, :string
  end
end
