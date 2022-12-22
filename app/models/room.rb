class Room < ApplicationRecord
  belongs_to :user
  has_many :ideas
  has_one_attached :image

  validates :image, :theme, :theme_info, presence: true

end
