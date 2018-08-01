class GoodsStatusBuyer < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }, on: :create
  validates :description, length: { maximum: 50 }, on: :create
end
