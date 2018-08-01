class Deal < ApplicationRecord
  belongs_to :card
  belongs_to :user
  
  validates :card_id, presence: true, on: :create
  validates :trade_statuses_id, presence: true, on: :create
  validates :user_id, presence: true, on: :create
end
