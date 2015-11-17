# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.create(name: 'sport')
10.times do
  category.products.create(name: 'bike', description: 'sport bike', price: 1500, image: File.open("#{Rails.root}/image.png"))
end
