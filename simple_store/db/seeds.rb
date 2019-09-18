# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

(1..676).each do |_i|
  Product.create(
    title: Faker::Book.title,
    description: Faker::Book.publisher,
    price: Faker::Number.decimal(l_digits: 2),
    stock_quantity: Faker::Number.within(range: 0..50)
  )
end
