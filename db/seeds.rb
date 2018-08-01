# Restaurant.create(name: "#{Faker::Commerce.color} #{Faker::Food.spice.split.first}".titlecase, address: "#{Faker::Address.community}", description: "#{Faker::Company.buzzword} #{Faker::Food.ingredient}".capitalize, image: "http://askwomenonline.org/wp-content/uploads/2017/12/hummus-recipe-760x428.jpg")
# Restaurant.create(name: "#{Faker::Commerce.color} #{Faker::Food.spice.split.first}".titlecase, address: "#{Faker::Address.community}", description: "#{Faker::Company.buzzword} #{Faker::Food.ingredient}".capitalize, image: "https://img.grouponcdn.com/deal/8DDtq5XRzVnLXEUnPHPd/p2-2048x1229/v1/c700x420.jpg")
# Restaurant.create(name: "#{Faker::Commerce.color} #{Faker::Food.spice.split.first}".titlecase, address: "#{Faker::Address.community}", description: "#{Faker::Company.buzzword} #{Faker::Food.ingredient}".capitalize, image: "https://assets.epicurious.com/photos/57a384e73a12dd9d5602415e/2:1/w_1260%2Ch_630/mango-salad.jpg")
# Restaurant.create(name: "#{Faker::Commerce.color} #{Faker::Food.spice.split.first}".titlecase, address: "#{Faker::Address.community}", description: "#{Faker::Company.buzzword} #{Faker::Food.ingredient}".capitalize, image: "https://media-cdn.tripadvisor.com/media/photo-s/11/76/1c/72/stock-burger-co.jpg")

# Restaurant.all.each do |restaurant|
#   Comment.create(restaurant: restaurant, content: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}", image: "https://kitt.lewagon.com/placeholder/users/gabriel-dehan")
#   Comment.create(restaurant: restaurant, content: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}", image: "https://kitt.lewagon.com/placeholder/users/graysdays")
#   Comment.create(restaurant: restaurant, content: "#{Faker::Hipster.sentence(2, false, 0)}", name: "#{Faker::Name.first_name}", image: "https://kitt.lewagon.com/placeholder/users/alex-felix")
# end

Transaction.destroy_all
Post.destroy_all
User.delete_all

10.times do
  User.create(email: Faker::Internet.email, wechat_id: Faker::Number.number(5), name: Faker::Name.name)
end

Post.create(title: 'Introduction to Psychology', description: 'Likey New', course_number: 'ENWR 1510', professor: 'Rich Zhu', price: 20, user_id: User.last.id, photo:'https://www.bookish.com/wp-content/uploads/the-night-gardener-9781481439787_hr.jpg')

Post.create(title: '我今天有点膨胀', description: 'Used', course_number: 'PHIL 4510', professor: '陈奕恺', price: 150, user_id: User.last.id, photo:'http://lynnekennedymysteries.com/wp-content/uploads/2015/01/great-covers-21.jpg')

Post.create(title: 'Topics in Javascript', description: 'Acceptable', course_number: 'COMP 2510', professor: 'Dounan', price: 35, user_id: User.first.id, photo:'https://www.bookish.com/wp-content/uploads/the-night-gardener-9781481439787_hr.jpg')




Transaction.create(user_id:User.last.id, post_id:Post.last.id)
