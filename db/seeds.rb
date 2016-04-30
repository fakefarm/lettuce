# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all

Book.create(name: 'food', tag: 'high', note: 'i like to eat and so do those around me', user_id: 1, family_id: 1)
Book.create(name: 'fun', tag: 'high', note: 'i like to party and so do those around me', user_id: 1, family_id: 1)

Expense.destroy_all

Expense.create(name: "Taco Bell", frequency: "Weekly", target_price: 10, book_id: 1, structure: "variable", reminder_id: 1, user_id: 1, family_id: 1)
Expense.create(name: "Taco Party", frequency: "Weekly", target_price: 100, book_id: 2, structure: "variable", reminder_id: 1, user_id: 1, family_id: 1)


puts 'seeded...'
