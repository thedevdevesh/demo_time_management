class CreateWorklogs < ActiveRecord::Migration[7.2]
  def change
    create_table :worklogs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.float :hours, null: false
      t.string :notes

      t.timestamps
    end
  end
end
