class User < ApplicationRecord
  has_many :goods, dependent: :destroy
  attr_accessor :remember_token # атрибут

  validates :login, presence: true, length: { minimum: 5 }, on: :create

  has_secure_password

  before_save { self.email = email.downcase }
  
  validates :password, presence: true, length: { minimum: 8 }, on: :create

  VALID_EMAIL_REGEX = /\A(?:[A-z0-9_\-]+\.)*[A-z0-9_\-]+@(?:[A-z0-9][A-z0-9\-]*[A-z0-9]\.)+[A-z]{2,16}\z/
  validates :email, presence: true, length: { minimum: 8 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }, on: :create

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
  end

end
