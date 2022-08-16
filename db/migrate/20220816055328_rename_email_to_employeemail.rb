class RenameEmailToEmployeemail < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :email, :employeemail
  end
end
