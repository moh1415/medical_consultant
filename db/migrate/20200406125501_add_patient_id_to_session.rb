class AddPatientIdToSession < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :patient_id, :integer
  end
end
