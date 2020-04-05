class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :description
      t.string :Response
      t.date :date

      t.timestamps
    end
  end
end
