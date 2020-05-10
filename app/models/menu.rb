class Menu < ApplicationRecord
  belongs_to :diet_and_allergy
  has_many :orders
end
