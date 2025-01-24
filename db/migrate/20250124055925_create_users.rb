class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.float :preferred_working_hour_per_day

      t.timestamps
    end
  end
end
