# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# # SEEDED
#
# # CATEGORIES
  top = Category.find_or_create_by(name: 'top')
  bottom = Category.find_or_create_by(name: 'bottom')
  shoes = Category.find_or_create_by(name: 'shoes')
  jacket = Category.find_or_create_by(name: 'jacket')
  other = Category.find_or_create_by(name: 'other')
#
# # USER
  mcz = User.find_or_create_by(username: 'mczizzzle', first_name: 'marisa', last_name: 'canan')
  dionne = User.find_or_create_by(username: 'notSoClueless', first_name: 'dionne', last_name: 'davenport')
  pey = User.find_or_create_by(username: 'pey4play', first_name: 'peyton', last_name: 'doyle')

  mbirk = Item.find_or_create_by(image: 'https://images-na.ssl-images-amazon.com/images/I/61UAg3chSkL._UY395_.jpg', category: shoes, color: 'brown', user: mcz, brand: 'birkenstock')
  pbirk = Item.find_or_create_by(image: 'https://images-na.ssl-images-amazon.com/images/I/61UAg3chSkL._UY395_.jpg', category: shoes, color: 'brown', user: pey, brand: 'birkenstock')

  pallbird = Item.find_or_create_by(image: 'https://i.ebayimg.com/images/g/cFYAAOSwoptdYEQb/s-l300.jpg', category: shoes, color: 'white', user: pey, brand: 'allbird')
  mallbird = Item.find_or_create_by(image: 'https://cdna.lystit.com/photos/nordstrom/0d68d87d/allbirds-Chili-Wool-Runner.jpeg', category: shoes, color: 'red', user: mcz, brand: 'allbird')

  mjean = Item.find_or_create_by(image: 'https://m.media-amazon.com/images/G/01/Shopbop/p/prod/products/madew/madew4313011dae/madew4313011dae_q1_2-0._UX357_QL90_.jpg', category: bottom, color: 'blue', user: mcz, brand: 'madewell')

  Item.find_or_create_by(category: bottom, brand: 'zella', user: mcz, color: 'grey', image: 'https://n.nordstrommedia.com/id/sr3/45348943-7608-40f6-a32c-92f32e41c9f8.jpeg')
  Item.find_or_create_by(category: bottom, brand: 'madewell', user: mcz, color: 'tan', image: 'https://i.s-madewell.com/is/image/madewell/AF033_GR5628_d1?wid=1400&hei=1779&fmt=jpeg&fit=crop&qlt=75,1&resMode=bisharp&op_usm=0.5,1,5,0')
  Item.find_or_create_by(category: top, brand: "francesca's", user: mcz, color: 'blue', image: 'https://ii.francescas.com/fcgi-bin/iipsrv.fcgi?FIF=/images/francescascollections//source/Tops/F2034RD62_babyb-cl.tif&wid=920&cvt=jpeg')
  Item.find_or_create_by(category: top, brand: 'treasure & bond', user: mcz, color: 'grey', image: 'https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/3/_106312923.jpg')

#
# # CLOTHING ITEMS
# jean_img = '"https://n.nordstrommedia.com/id/sr3/170c6f03-6827-4ac5-ade3-8f940087e72b.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=489&h=750&quality=70"'
#
# jeans = Item.find_or_create_by(brand: 'madewell', color: 'blue', image: jean_img, category: bottom, user: cher)
#
#
# tshirt_img = 'https://images-na.ssl-images-amazon.com/images/I/71lTrSOgiwL._UY606_.jpg'
# tshirt = Item.find_or_create_by(color: 'multi', brand: 'gap', image: tshirt_img, category: top, user: cher)
# shirt2 = Item.find_or_create_by(category: Category.find(1), user: User.find(1), color: 'blue', brand: 'gap', image: 'https://www.gap.com/webcontent/0017/143/843/cn17143843.jpg')
# skirt = Item.find_or_create_by(category: Category.find(2), user: User.find(1), color: 'blue', brand: 'madewell', image: 'https://i.s-madewell.com/is/image/madewell/AF033_GR5628_d1?wid=1400&hei=1779&fmt=jpeg&fit=crop&qlt=75,1&resMode=bisharp&op_usm=0.5,1,5,0')
#
#
#
dress_img = 'https://i.s-madewell.com/is/image/madewell/AB304_WQ7007_ld?wid=1400&hei=1779&fmt=jpeg&fit=crop&qlt=75,1&resMode=bisharp&op_usm=0.5,1,5,0'
#
dress = Item.find_or_create_by(category: other, brand: 'madewell', user: mcz, color: 'red', image: dress_img)
#
# joggers = Item.find_or_create_by(category: Category.find(2), brand: 'zella', user: User.find(1), color: 'grey', image: './app/images/zella-jogger.jpeg')












# NOT YET SEEDED

# casual = Outfit.find_or_create_by(id: 1)
#
# OutfitItem.find_or_create_by(item: jeans, outfit: casual)
# OutfitItem.find_or_create_by(item: tshirt, outfit: casual)
























# seed data
