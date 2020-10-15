class Player < ApplicationRecord
  belongs_to :team
  belongs_to :role
  validates :name, :playerposition, :height, :weight, :draftyear, presence: true
end
