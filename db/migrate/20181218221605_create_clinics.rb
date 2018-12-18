class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :name
      t.integer :hours
      t.integer :cohort_id

      t.timestamps
    end
  end
end
