class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :clinic_id
      t.integer :player_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
