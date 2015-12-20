class Food < ActiveRecord::Base
  has_many :orders
  has_many :groups, through: :orders
end
