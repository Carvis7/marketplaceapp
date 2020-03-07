


users = [
user1 = User.create(email: 'carly@carly.com', password: 'password'),
user2 = User.create(email: 'davis@davis.com', password: 'password'),
user3 = User.create(email: 'carvis@carvis.com', password: 'password')
]
users.each do |user|
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    available: true,
    user_id: user1.id
  )
  end
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    available: true,
    user_id: user2.id
  )
  end
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    available: false,
    user_id: user3.id
  )
  end
end