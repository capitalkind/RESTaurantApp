class Party < ActiveRecord::Base

  default_scope { order('created_at DESC') }

  belongs_to :employee
  has_many :orders, :dependent => :delete_all
  has_many :foods, through: :orders

  attr_accessor :total

  def the_check
    self.total = 0
    self.orders.each do |order|
      self.total += order.food.price
    end
    self.total
  end

  end


