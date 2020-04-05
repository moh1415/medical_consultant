class AddFullnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :phone_number, :integer
    add_column :users, :is_role, :string, default: "patient"
  end
end
