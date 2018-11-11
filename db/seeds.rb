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