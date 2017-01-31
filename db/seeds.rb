require 'faker'

if User.count.zero?
  puts "Seeding with test users...".colorize(:green)

  USER_PASSWORD = ENV['USER_PASSWORD'] || 'userPassword123'

  User.create({
    email: "admin@mail.com",
    password: USER_PASSWORD,
    password_confirmation: USER_PASSWORD
  })

  puts "admin@mail.com".colorize(:marvel), "#{USER_PASSWORD}".colorize(:pink)
end

puts "Done!".colorize(:yellow)