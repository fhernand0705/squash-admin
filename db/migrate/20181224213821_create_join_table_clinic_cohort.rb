class CreateJoinTableClinicCohort < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clinics, :cohorts do |t|
      t.index [:clinic_id, :cohort_id]
      t.index [:cohort_id, :clinic_id]
    end
  end
end
