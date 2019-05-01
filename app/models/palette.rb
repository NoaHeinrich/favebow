class Palette < ApplicationRecord
  belongs_to :color
  belongs_to :user
end
