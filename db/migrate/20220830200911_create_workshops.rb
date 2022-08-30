class CreateWorkshops < ActiveRecord::Migration[7.0]
  def change
    create_table :workshops do |t|
      t.integer :conference_id
      t.string :name
      t.string :speaker
      t.text :description

      t.timestamps
    end
  end
end
