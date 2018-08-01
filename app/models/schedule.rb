class Schedule < ApplicationRecord
  validates :news, presence: true, on: :create
  validates :description, presence: true, on: :create
  validates :date, presence: true, on: :create
end
