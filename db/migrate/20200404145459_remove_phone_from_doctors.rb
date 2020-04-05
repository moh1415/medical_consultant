class RemovePhoneFromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :Phone, :string
  end
end
