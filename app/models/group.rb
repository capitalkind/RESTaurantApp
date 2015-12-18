class Group < ActiveRecord::Base
  belongs_to :employee
  has_many :foods, through: :guest
end
