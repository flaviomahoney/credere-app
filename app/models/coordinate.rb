class Coordinate < ApplicationRecord
    validates :movimentos, presence: true
    belongs_to :user
end
