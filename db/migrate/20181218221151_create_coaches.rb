class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :salary
      t.string :education
      t.integer :cohort_id

      t.timestamps
    end
  end
end
