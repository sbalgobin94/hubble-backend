# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
User.reset_pk_sequence
Post.reset_pk_sequence

sam = User.create(username: 'sbalgobin')
josh = User.create(username: 'jitwaru')

post1 = Post.create(title: "Check out this movie!", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit unde repellendus obcaecati tenetur fugit. Numquam necessitatibus iure molestias, dicta ex nisi ab commodi nostrum ipsa maiores accusamus sunt fugiat labore.", image_url: 'https://2.bp.blogspot.com/-pZbds_1JocY/U4l6vAtDA5I/AAAAAAAALU0/PWE5TJEhWds/s1600/sunshine_ver4_xlg.jpg', user_id: sam.id)

post2 = Post.create(title: "Mars Rover Update", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit unde repellendus obcaecati tenetur fugit. Numquam necessitatibus iure molestias, dicta ex nisi ab commodi nostrum ipsa maiores accusamus sunt fugiat labore.", image_url: 'https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/Mars-Insight-2-1545687739.jpg', user_id: sam.id)

post3 = Post.create(title: "Journey to Mars", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit unde repellendus obcaecati tenetur fugit. Numquam necessitatibus iure molestias, dicta ex nisi ab commodi nostrum ipsa maiores accusamus sunt fugiat labore.", image_url: 'https://spacenews.com/wp-content/uploads/2015/10/journey_to_mars-879x485.jpg', user_id: josh.id)