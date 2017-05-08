class ChangeAdminDob < ActiveRecord::Migration[5.0]
  def change

  	change_column :admins, :Dob, :datetime


  end
end
