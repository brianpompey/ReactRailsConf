class RemoveSpeakerFromTalks < ActiveRecord::Migration[7.0]
  def change
    remove_column :talks, :speaker, :string
  end
end
