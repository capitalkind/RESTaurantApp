class Food < ActiveRecord::Base
  has_many :guests
end
