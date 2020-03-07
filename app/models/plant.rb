class Plant < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :image
end
