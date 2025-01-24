class CreateWorklogs < ActiveRecord::Migration[7.2]
  def change
    create_table :worklogs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.float :hours
      t.string :notes

      t.timestamps
    end
  end
end
