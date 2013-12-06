namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobarlol",
                 password_confirmation: "foobarlol")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@getpro.org"
      password  = "passwordlol"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end