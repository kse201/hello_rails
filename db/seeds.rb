User.create(name: 'Exampe Uesr',
    email: 'example@railstutorial.org',
    password: 'foobar',
    password_confirmation: 'foobar',
    admin: true
    )

99.times do |n|
    name = Faker::Name.name
    password = 'password'
    email = "example-#{n+1}@railstutorial.org"
    User.create(name: name,
        email: email,
        password: password,
        password_confirmation: password
    )

end