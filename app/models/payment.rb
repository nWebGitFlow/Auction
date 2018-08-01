class Payment < ApplicationRecord
  belongs_to :card

  validates :purpose, presence: true, length: { maximum: 50 }, on: :create
  validates :amount, presence: true, on: :create
  validates :receipt_date, presence: true, on: :create
  validates :payment_date, presence: true, on: :create
end
