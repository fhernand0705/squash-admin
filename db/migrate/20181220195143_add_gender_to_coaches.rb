class AddGenderToCoaches < ActiveRecord::Migration[5.2]
  def change
    add_column :coaches, :gender, :string
  end
end
