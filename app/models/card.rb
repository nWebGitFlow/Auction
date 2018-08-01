class Card < ApplicationRecord
  has_many :payment, dependent: :destroy
  has_many :deal, dependent: :destroy
  belongs_to :good
  
  validates :goods_id, presence: true, on: :create
end
