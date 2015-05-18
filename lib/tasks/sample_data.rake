namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Tiger E",
                 email: "tiger1488@panzer.net",
                 password: "Tiger1488",
                 password_confirmation: "Tiger1488",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@panzer.net"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all.limit(6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end

  end
end