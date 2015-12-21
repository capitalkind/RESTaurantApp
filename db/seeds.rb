# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.create(username: 'Malcolm', password: 'malcolm', permission: 3)
Employee.create(username: 'Steve', password: 'steve', permission: 2)
Employee.create(username: 'Tim', password: 'tim', permission: 2)
Employee.create(username: 'Bill', password: 'bill', permission: 1)

Food.create(name: 'Chicken Parm', description: 'Chickeny and Delicious', price: 10.50)
Food.create(name: 'The Big Salad', description: 'We will hand it to you', price: 11.25)
Food.create(name: 'Thai Chicken', description: 'Just Spicy Enough', price: 9)
Food.create(name: 'Signature Pasta', description: 'Homemade Sauce!', price: 12.75)
