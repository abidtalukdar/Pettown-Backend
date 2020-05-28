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
Follow.create(follower_id: 3, followee_id: 4)
Follow.create(follower_id: 3, followee_id: 5)
Follow.create(follower_id: 4, followee_id: 3)
Follow.create(follower_id: 4, followee_id: 5)
Follow.create(follower_id: 5, followee_id: 7)
Follow.create(follower_id: 5, followee_id: 6)
Follow.create(follower_id: 6, followee_id: 3)
Follow.create(follower_id: 6, followee_id: 4)
Follow.create(follower_id: 7, followee_id: 3)
Follow.create(follower_id: 7, followee_id: 5)
Follow.create(follower_id: 8, followee_id: 4)
Follow.create(follower_id: 8, followee_id: 5)

Image.destroy_all
Image.create(user_id: 3, image_url:"https://images.pexels.com/photos/556666/pexels-photo-556666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", caption: "My human being crazy", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 4, image_url:"https://images.unsplash.com/photo-1578185708140-55c94bb9426f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", caption: "This thing was looking at me so I took a picture of it.", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 5, image_url:"https://iso.500px.com/wp-content/uploads/2016/04/stock-photo-150595123.jpg", caption: "The other day when I went to Paris.", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 3, image_url:"https://www.floraqueen.com/blog/wp-content/uploads/2020/02/shutterstock_1009843408.jpg", caption: "My human grows these things", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 4, image_url:"https://www.lookslikefilm.com/wp-content/uploads/2020/01/Paul-Wilson.jpg", caption: "wow", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 5, image_url:"https://lh3.googleusercontent.com/proxy/GvWf1b-6bAhSBLSycrdMdUqij14QicU8ceOeqzzu5eNF4VH_Tn30E-fpU6Zu3GOdShadInP1JsZEQbtkLF1MPzvnx_1NVrTTivo8EUMrnsQb2PzXlwaUYWx50Iyx-f70JmXFHv4Sv4sOYYHEovKddJfyFx986A", caption: "The other day when I went out for a walk", date: DateTime.now.strftime("%B %d, %Y").to_s)


Image.create(user_id: 6, image_url:"https://i.ytimg.com/vi/6lt2JfJdGSY/maxresdefault.jpg", caption: "Me and my human went on a hike", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 7, image_url:"https://www.demilked.com/magazine/wp-content/uploads/2014/10/autumn-before-and-after-nature-photography-110.jpg", caption: "My house", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 8, image_url:"https://cache.marriott.com/marriottassets/marriott/BOBXR/bobxr-exterior-aerialview-1580-hor-wide.jpg?interpolation=progressive-bilinear&downsize=1440px:*", caption: "The other day at Bora Bora", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 6, image_url:"https://www.kumalodge.co/wp_files/wp-content/uploads/2018/04/mt-fuji-trip.jpg", caption: "Narita, Japan", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 7, image_url:"https://www.mensjournal.com/wp-content/uploads/2019/04/TokyoMain.jpg", caption: "Tokyo, Japan", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 8, image_url:"https://images.unsplash.com/photo-1494243762909-b498c7e440a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80", caption: "Northern Lights is breathtaking", date: DateTime.now.strftime("%B %d, %Y").to_s)

Image.create(user_id: 3, image_url:"https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=9c30ed97ea8731f3e2a155467201afe3", caption: "A few of my friends", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 4, image_url:"https://a57.foxnews.com/cf-images.us-east-1.prod.boltdns.net/v1/static/694940094001/c81c93cd-b1dc-4ae1-8ccb-6713681bf146/cf55f3a4-2bcd-4fe2-bebf-08d4e86e1dae/1280x720/match/931/524/image.jpg?ve=1&tl=1", caption: "Why is this cat so angry?", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 5, image_url:"https://i.pinimg.com/originals/d4/85/9f/d4859f69a68cd854e0aac9465fe0804b.jpg", caption: "I am artsy", date: DateTime.now.strftime("%B %d, %Y").to_s)

Image.create(user_id: 3, image_url:"https://images.unsplash.com/photo-1512641406448-6574e777bec6?ixlib=rb-1.2.1&w=1000&q=80", caption: "Beautiful", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 4, image_url:"https://images.unsplash.com/photo-1500245804862-0692ee1bbee8?ixlib=rb-1.2.1&w=1000&q=80", caption: "This sunset was so noice", date: DateTime.now.strftime("%B %d, %Y").to_s)
Image.create(user_id: 5, image_url:"https://i.etsystatic.com/6405715/r/il/e7a867/767430778/il_570xN.767430778_g29u.jpg", caption: "Throwback to when I went surfing", date: DateTime.now.strftime("%B %d, %Y").to_s)


# Image.create(user_id: 6, image_url:"https://i.ytimg.com/vi/6lt2JfJdGSY/maxresdefault.jpg", caption: "Me and my human went on a hike", date: DateTime.now.strftime("%B %d, %Y").to_s)
# Image.create(user_id: 7, image_url:"https://www.demilked.com/magazine/wp-content/uploads/2014/10/autumn-before-and-after-nature-photography-110.jpg", caption: "My house", date: DateTime.now.strftime("%B %d, %Y").to_s)
# Image.create(user_id: 8, image_url:"https://cache.marriott.com/marriottassets/marriott/BOBXR/bobxr-exterior-aerialview-1580-hor-wide.jpg?interpolation=progressive-bilinear&downsize=1440px:*", caption: "The other day at Bora Bora", date: DateTime.now.strftime("%B %d, %Y").to_s)
# Image.create(user_id: 6, image_url:"https://www.kumalodge.co/wp_files/wp-content/uploads/2018/04/mt-fuji-trip.jpg", caption: "Narita, Japan", date: DateTime.now.strftime("%B %d, %Y").to_s)
# Image.create(user_id: 7, image_url:"https://www.mensjournal.com/wp-content/uploads/2019/04/TokyoMain.jpg", caption: "Tokyo, Japan", date: DateTime.now.strftime("%B %d, %Y").to_s)
# Image.create(user_id: 8, image_url:"https://images.unsplash.com/photo-1494243762909-b498c7e440a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80", caption: "Northern Lights is breathtaking", date: DateTime.now.strftime("%B %d, %Y").to_s)