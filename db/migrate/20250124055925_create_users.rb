class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.float :preferred_working_hour_per_day, null: false, default: 8.0, limit: 16

      t.timestamps
    end
  end
end
