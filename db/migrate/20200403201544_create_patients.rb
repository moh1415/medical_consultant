class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.string :phone_number
      t.string :age

      t.timestamps
    end
  end
end
