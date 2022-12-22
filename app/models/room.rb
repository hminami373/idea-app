class Room < ApplicationRecord
  belongs_to :user
  has_many :ideas

  validates :image, :theme, :theme_info, presence: true

end
