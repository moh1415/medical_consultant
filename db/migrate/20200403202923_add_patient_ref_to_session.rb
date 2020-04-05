class AddPatientRefToSession < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :patient, foreign_key: true
  end
end
