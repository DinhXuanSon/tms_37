User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             supervisor: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

50.times do |n|
  name  = Faker::Lorem.sentence 5
  instruction = Faker::Lorem.sentence 50
  date1 = Faker::Time.between(2.weeks.ago, Time.now) 
  date2 = Faker::Time.between(2.weeks.ago, Time.now)
  Subject.create(name: name,
                 instruction: instruction,
  	             start_date: [date1,date2].min,
                 end_date: [date1,date2].max)
end

100.times do |n|
  name = Faker::Lorem.sentence 5
  subject = Subject.all[(0..30).to_a.shuffle.first]
  Task.create(name: name,
  						subject: subject)
end