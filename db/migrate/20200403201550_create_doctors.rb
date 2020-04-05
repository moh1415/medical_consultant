class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :full_name
      t.string :specialization
      t.string :Phone
      t.integer :number

      t.timestamps
    end
  end
end
