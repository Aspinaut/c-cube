class User < ApplicationRecord
  belongs_to :address
  belongs_to :diet_and_allergy, optional: true
  has_many :orders

  has_secure_password
  
  def remember(remember_token)
    remember_digest = BCrypt::Password.create(remember_token)
    self.update(remember_digest: remember_digest)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
