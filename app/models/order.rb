class Order < ApplicationRecord
  belongs_to :users
  belongs_to :kitchens
  belongs_to :menus
end
