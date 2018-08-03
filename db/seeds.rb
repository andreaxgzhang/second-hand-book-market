Transaction.destroy_all
Post.destroy_all
User.destroy_all

# User.delete_all
# 10.times do
#   User.create(email: Faker::Internet.email, wechat_id: Faker::Number.number(5), name: Faker::Name.name)
# end

User.create(email: '1638790221@qq.com', wechat_id: 'zjd1244234448', name: 'Rich Zhu')
User.create(email: 'dai.thomas.li3@gmail.com', wechat_id: 'thomasdaili', name: 'Dai Li')


Post.create(title: 'Introduction to Psychology', description: 'Like New', course_number: 'Psyc 1100', professor: 'Richard Rollins', price: 40, user_id: User.all.sample.id, photo:'https://covers.flatworldknowledge.com/stangor/cover.png')

Post.create(title: 'The Great Reset', description: 'Good', course_number: 'ENGW 2050', professor: 'Andre Thompson', price: 40, user_id: User.all.sample.id, photo: 'http://www.creativindie.com/wp-content/uploads/2013/10/the_great_reset_book_cover.gif')

Post.create(title: 'Liberal Facism', confirmed: true, description: 'New', course_number: 'POLI 1050', professor: 'Kyle Holt', price: 50, user_id: User.all.sample.id, photo: 'https://theendsheet.files.wordpress.com/2008/03/libfascism.jpg')

Post.create(title: 'The Road', confirmed: true, description: 'Like New', course_number: 'ENGL 3010', professor: 'Mark Lewis', price: 30, user_id: User.all.sample.id, photo: 'https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/10/the-50-coolest-book-covers-15.jpg')

Post.create(title: 'Earth', description: 'Used, some notes', course_number: 'EVSC 1010', professor: 'Jason Simmons', price: 150, user_id: User.all.sample.id, photo: 'https://i.pinimg.com/originals/1c/57/ea/1c57eaff004085dad316119e6085eca4.jpg')

Post.create(title: 'Topics in Javascript', description: 'Acceptable', course_number: 'COMP 2510', professor: 'Tim Smith', price: 35, user_id: User.all.sample.id, photo:'http://www-fp.pearsonhighered.com/assets/hip/images/bigcovers/0132166755.jpg')

Post.create(title: 'Microeconomics', description: 'Used', course_number: 'Econ 2010', professor: 'Stephen Tang', price: 20, user_id: User.all.sample.id, photo: 'http://www.pearson.com.au/MC_images/_amazon/9781442550780.jpg')






# Transaction.create(user_id:User.last.id, post_id:Post.last.id)
