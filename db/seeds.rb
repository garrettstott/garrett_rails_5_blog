# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Garrett', last_name: 'Stott', email: 'garrettstott@gmail.com',
                   bio: 'This is my shit', password: 'password', password_confirmation: 'password')
User.create(first_name: 'Stephen', last_name: 'Porter', email: 'stephenporter@gmail.com',
                   bio: 'Come at me, bro.', password: 'password', password_confirmation: 'password')

users = User.all
users.each do |user|
Post.create(title:
'Nam volutpat euismod vehicula. Integer finibus id orci eget porta. Fusce mattis interdum enim, ut interdum metus.',
body:
'Nullam suscipit aliquet sapien in pharetra. Ut vulputate sagittis nulla, nec luctus lectus commodo sed. Quisque vehicula ipsum non aliquet tempus. Aenean vitae laoreet lorem. Suspendisse eget ornare quam. Cras elit ipsum, luctus sed sagittis ac, mollis nec tortor. Ut auctor congue diam, eu aliquet quam tristique vitae.',
user_id: user.id)

Post.create(title:
'Nam volutpat euismod vehicula. Integer finibus id orci eget porta. Fusce mattis interdum enim, ut interdum metus.',
body:
'Nullam suscipit aliquet sapien in pharetra. Ut vulputate sagittis nulla, nec luctus lectus commodo sed. Quisque vehicula ipsum non aliquet tempus. Aenean vitae laoreet lorem. Suspendisse eget ornare quam. Cras elit ipsum, luctus sed sagittis ac, mollis nec tortor. Ut auctor congue diam, eu aliquet quam tristique vitae.',
user_id: user.id)

Post.create(title:
'Nam volutpat euismod vehicula. Integer finibus id orci eget porta. Fusce mattis interdum enim, ut interdum metus.',
body:
'Nullam suscipit aliquet sapien in pharetra. Ut vulputate sagittis nulla, nec luctus lectus commodo sed. Quisque vehicula ipsum non aliquet tempus. Aenean vitae laoreet lorem. Suspendisse eget ornare quam. Cras elit ipsum, luctus sed sagittis ac, mollis nec tortor. Ut auctor congue diam, eu aliquet quam tristique vitae.',
user_id: user.id)

Post.create(title:
'Nam volutpat euismod vehicula. Integer finibus id orci eget porta. Fusce mattis interdum enim, ut interdum metus.',
body:
'Nullam suscipit aliquet sapien in pharetra. Ut vulputate sagittis nulla, nec luctus lectus commodo sed. Quisque vehicula ipsum non aliquet tempus. Aenean vitae laoreet lorem. Suspendisse eget ornare quam. Cras elit ipsum, luctus sed sagittis ac, mollis nec tortor. Ut auctor congue diam, eu aliquet quam tristique vitae.',
user_id: user.id)
end
