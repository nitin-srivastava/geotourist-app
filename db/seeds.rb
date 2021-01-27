# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
## Seed data
# require 'factory_bot'
puts 'Delete all existing users, tours and points.'
User.destroy_all

# First hundred users and their tours and points
puts 'First hundred users and their associated tours and points'
first_hundred_users = FactoryBot.create_list(:user, 100)
first_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Second hundred users and their tours and points
puts 'Second hundred users and their associated tours and points'
second_hundred_users = FactoryBot.create_list(:user, 100)
second_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Third hundred users and their tours and points
puts 'Third hundred users and their associated tours and points'
third_hundred_users = FactoryBot.create_list(:user, 100)
third_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Fourth hundred users and their tours and points
puts 'Fourth hundred users and their associated tours and points'
fourth_hundred_users = FactoryBot.create_list(:user, 100)
fourth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Fifth hundred users and their tours and points
puts 'Fifth hundred users and their associated tours and points'
fifth_hundred_users = FactoryBot.create_list(:user, 100)
fifth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Sixth hundred users and their tours and points
puts 'Fifth hundred users and their associated tours and points'
sixth_hundred_users = FactoryBot.create_list(:user, 100)
sixth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Seventh hundred users and their tours and points
puts 'Seventh hundred users and their associated tours and points'
seventh_hundred_users = FactoryBot.create_list(:user, 100)
seventh_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Eighth hundred users and their tours and points
puts 'Eighth hundred users and their associated tours and points'
eighth_hundred_users = FactoryBot.create_list(:user, 100)
eighth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Ninth hundred users and their tours and points
puts 'Ninth hundred users and their associated tours and points'
ninth_hundred_users = FactoryBot.create_list(:user, 100)
ninth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"

# Tenth hundred users and their tours and points
puts 'Tenth hundred users and their associated tours and points'
tenth_hundred_users = FactoryBot.create_list(:user, 100)
tenth_hundred_users.each do |user|
  FactoryBot.create_list(:tour, 10, user: user) do |tour|
    print '.'
    FactoryBot.create_list(:point, 10, full_address: nil, tour: tour)
  end
end
puts ''
puts "******************************* #{User.count} users was created successfully *******************************"
puts 'All done!!!'
