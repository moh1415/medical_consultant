class RemoveDoctorFromSession < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sessions, :doctor, foreign_key: true
  end
end
