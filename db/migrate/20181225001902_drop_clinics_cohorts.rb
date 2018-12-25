class DropClinicsCohorts < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :clinics, :cohorts 
  end
end
