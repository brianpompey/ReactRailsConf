class RemoveSpeakerFromWorkshops < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshops, :speaker, :string
  end
end
