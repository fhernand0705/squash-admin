class CreateJoinTablePlayersCohorts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :cohorts do |t|
      t.index [:player_id, :cohort_id]
      t.index [:cohort_id, :player_id]
    end
  end
end
