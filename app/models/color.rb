class Color < ApplicationRecord
  has_many :palettes
  has_many :users, through: :palettes

  validates :name, presence: true, uniqueness: true
  validates :hexcode, presence: true, uniqueness: true
  validates :hexcode, format: { with: /#[0-9a-f]{6}/i }
end
