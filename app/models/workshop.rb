class Workshop < ApplicationRecord
    belongs_to :conference
    validates :name, presence: true
    validates :speaker, presence: true
    validates :description, presence: true
end
