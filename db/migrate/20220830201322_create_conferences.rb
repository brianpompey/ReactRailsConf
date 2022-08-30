class CreateConferences < ActiveRecord::Migration[7.0]
  def change
    create_table :conferences do |t|
      t.string :name
      t.integer :min_donation, default: 0
      t.string :keynote
      t.text :category
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
