require 'faker'

# Create Users
5.times do 
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all 

# Create Items
100.times do 
  Item.create!(
    name: Faker::Lorem.sentence,
    user: users.sample
    )
end

# Create an admin user
admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
  )
admin.skip_confirmation!
admin.save!

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."