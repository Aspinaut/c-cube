class Address < ApplicationRecord
  has_many :kitchens
  has_many :users

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Wrong email format" }
    
end
