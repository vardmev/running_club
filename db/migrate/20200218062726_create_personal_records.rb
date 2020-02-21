class CreatePersonalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_records do |t|
      t.integer :distance
      t.time :time
      t.date :date
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
