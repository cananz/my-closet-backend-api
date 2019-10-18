# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# SEEDED

# CATEGORIES
  top = Category.find_or_create_by(name: 'top')
  bottom = Category.find_or_create_by(name: 'bottom')
  shoes = Category.find_or_create_by(name: 'shoes')
  jacket = Category.find_or_create_by(name: 'jacket')
  other = Category.find_or_create_by(name: 'other')

# USER
  cher = User.find_or_create_by(username: 'clueless', first_name: 'cher', last_name: 'horowitz')

# CLOTHING ITEMS
jean_img = '"https://n.nordstrommedia.com/id/sr3/170c6f03-6827-4ac5-ade3-8f940087e72b.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=489&h=750&quality=70"'

jeans = Item.find_or_create_by(brand: 'madewell', color: 'blue', image: jean_img, category: bottom, user: cher)


tshirt_img = 'https://images-na.ssl-images-amazon.com/images/I/71lTrSOgiwL._UY606_.jpg'
tshirt = Item.find_or_create_by(color: 'multi', brand: 'gap', image: tshirt_img, category: top, user: cher)

# NOT YET SEEDED

casual = Outfit.find_or_create_by(id: 1)

OutfitItem.find_or_create_by(item: jeans, outfit: casual)
OutfitItem.find_or_create_by(item: tshirt, outfit: casual)
























# seed data
