namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_exercises
    make_workouts
  end
end

def make_users
  admin = User.create!(name:     "Example User",
                       email:    "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar")
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end

def make_exercises
   Exercise.create!(name:"Barbell Benchpress")
   Exercise.create!(name:"Dumbell Benchpress")
   Exercise.create!(name:"Squat")
   Exercise.create!(name:"Deadlift")
   Exercise.create!(name:"Shoulder press")
end

def make_workouts
  users = User.all(limit: 6)
  time_in_weeks = 3
  0.upto(time_in_weeks) do |number_of|
    1.upto(2) do |counter|
      name = "MY #{counter.ordinalize} WORKOUT"
      date = number_of.weeks.ago - (counter*counter).days
      users.each do |user| 
        user.workouts.create!(name: name, date: date)
      end
    end    
  end 
end