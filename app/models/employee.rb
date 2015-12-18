class Employee < ActiveRecord::Base

  has_secure_password
  has_many :groups
  has_many :guests, through: :group

end
