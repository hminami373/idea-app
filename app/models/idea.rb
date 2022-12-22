class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :image, :idea, presence: true
end
