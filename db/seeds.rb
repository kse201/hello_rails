User.create(name: 'Exampe Uesr',
    email: 'example@railstutorial.org',
    password: 'foobar',
    password_confirmation: 'foobar',
    admin: true,
    activated: true,
    activated_at: Time.zone.now
    )

99.times do |n|
    name = Faker::Name.name
    password = 'password'
    email = "example-#{n+1}@railstutorial.org"
    activated = n.odd? ? true : false
    activated_at = activated ? Time.zone.now : nil
    User.create(name: name,
        email: email,
        password: password,
        password_confirmation: password,
        activated: activated,
        activated_at: activated_at
    )
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user = users.first

following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
