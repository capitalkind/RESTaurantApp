require 'rails_helper'

RSpec.describe Party, type: :model do

  it "should be able to get the total balance based on all the food items ordered" do
    employee = Employee.create({username: 'Steve', password: 'steve', permission: 2, id: 2})
    food = Food.create({name: 'Chicken Parm', description: 'Chickeny and Delicious', price: 10, id: 1})
    party = Party.create({guest_count: 2, paid_for: 1, employee_id: 2, id: 1})
    order = party.orders.create({id: 1, order_up: 1, food_id: 1, party_id: 1})

    actual = party.the_check
    expected = 10

    expect(actual).to eq(expected)

  end

end
