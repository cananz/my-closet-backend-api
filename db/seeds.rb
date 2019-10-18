# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

top = Category.find_or_create_by(name: 'top')
bottom = Category.find_or_create_by(name: 'bottom')
shoes = Category.find_or_create_by(name: 'shoes')
jacket = Category.find_or_create_by(name: 'jacket')
other = Category.find_or_create_by(name: 'other')


cher = User.find_or_create_by(username: 'clueless', first_name: 'cher', last_name: 'horowitz')

jean_img = 'https://fastly.hautelookcdn.com/products/50C-7002NOK/large/9514585.jpg?height=350&width=228'


jeans = Item.find_or_create_by(brand: 'madewell', color: 'blue', image: jean_img, category: bottom, user: cher)
