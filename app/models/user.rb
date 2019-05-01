class User < ApplicationRecord
  has_many :palettes
  has_many :colors, through: :palettes

  validates :name, uniqueness: true, presence: true
end
