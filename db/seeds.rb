# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "abidtalukdar", password_digest: "12345678", name: "abid", bio: "hello", profile_picture: nil, location: nil)
# User.create(username: "samiaislam", password_digest: "12345678", name: "samia", bio: "hello", profile_picture: nil, location: nil)

Follow.destroy_all
Follow.create(follower_id: 1, followee_id: 2)

Image.destroy_all
Image.create(user_id: 2, image_url:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 2, image_url:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 2, image_url:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)

Image.create(user_id: 1, image_url:"https://cdn.eso.org/images/screen/eso1907a.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 1, image_url:"https://cdn.eso.org/images/screen/eso1907a.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 1, image_url:"https://cdn.eso.org/images/screen/eso1907a.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)