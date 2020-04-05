class AddDoctorRefToSession < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :doctor, foreign_key: true
  end
end
