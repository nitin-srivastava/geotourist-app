# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
## Seed data
puts 'Delete all existing users, tours and points.'
User.destroy_all

# First hundred users and their tours and points
puts 'Create First hundred users and their associated tours and points'
first_hundred_users = FactoryBot.create_list(:user, 100)
first_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Second hundred users and their tours and points
puts 'Create Second hundred users and their associated tours and points'
second_hundred_users = FactoryBot.create_list(:user, 100)
second_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Third hundred users and their tours and points
puts 'Create Third hundred users and their associated tours and points'
third_hundred_users = FactoryBot.create_list(:user, 100)
third_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Fourth hundred users and their tours and points
puts 'Create Fourth hundred users and their associated tours and points'
fourth_hundred_users = FactoryBot.create_list(:user, 100)
fourth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Fifth hundred users and their tours and points
puts 'Create Fifth hundred users and their associated tours and points'
fifth_hundred_users = FactoryBot.create_list(:user, 100)
fifth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Sixth hundred users and their tours and points
puts 'Create Sixth hundred users and their associated tours and points'
sixth_hundred_users = FactoryBot.create_list(:user, 100)
sixth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Seventh hundred users and their tours and points
puts 'Create Seventh hundred users and their associated tours and points'
seventh_hundred_users = FactoryBot.create_list(:user, 100)
seventh_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Eighth hundred users and their tours and points
puts 'Create Eighth hundred users and their associated tours and points'
eighth_hundred_users = FactoryBot.create_list(:user, 100)
eighth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    tour.update_analytics
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Ninth hundred users and their tours and points
puts 'Create Ninth hundred users and their associated tours and points'
ninth_hundred_users = FactoryBot.create_list(:user, 100)
ninth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
sleep 3

# Tenth hundred users and their tours and points
puts 'Create Tenth hundred users and their associated tours and points'
tenth_hundred_users = FactoryBot.create_list(:user, 100)
tenth_hundred_users.each do |user|
  user.update_analytics
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    tour.update_analytics
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts ''
puts 'All done!!!'
