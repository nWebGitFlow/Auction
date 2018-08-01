class Good < ApplicationRecord
  has_one :card, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: { minimum: 2 }, on: :create

  validates :description, presence: true, length: { minimum: 8 }, on: :create
  
end
