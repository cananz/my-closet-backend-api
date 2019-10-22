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
shirt2 = Item.find_or_create_by(category: Category.find(1), user: User.find(1), color: 'blue', brand: 'gap', image: 'https://www.gap.com/webcontent/0017/143/843/cn17143843.jpg')
skirt = Item.find_or_create_by(category: Category.find(2), user: User.find(1), color: 'blue', brand: 'madewell', image: 'https://i.s-madewell.com/is/image/madewell/AF033_GR5628_d1?wid=1400&hei=1779&fmt=jpeg&fit=crop&qlt=75,1&resMode=bisharp&op_usm=0.5,1,5,0')



dress_img = 'https://i.s-madewell.com/is/image/madewell/AB304_WQ7007_ld?wid=1400&hei=1779&fmt=jpeg&fit=crop&qlt=75,1&resMode=bisharp&op_usm=0.5,1,5,0'

dress = Item.find_or_create_by(category: Category.find(5), brand: 'madewell', user: User.find(1), color: 'red', image: dress_img)

joggers = Item.find_or_create_by(category: Category.find(2), brand: 'zella', user: User.find(1), color: 'grey', image: './app/images/zella-jogger.jpeg')












# NOT YET SEEDED

casual = Outfit.find_or_create_by(id: 1)

OutfitItem.find_or_create_by(item: jeans, outfit: casual)
OutfitItem.find_or_create_by(item: tshirt, outfit: casual)
























# seed data
