class Order < ActiveRecord::Base

  default_scope { order('created_at DESC') }

  belongs_to :food
  belongs_to :group
end
