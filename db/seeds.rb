


users = [
user1 = User.create(email: 'test-user1@plants.com', password: 'password'),
user2 = User.create(email: 'test-user2@plants.com', password: 'password'),
user3 = User.create(email: 'test-user3@plants.com', password: 'password')
]
users.each do |user|
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    user_id: user1.id
  )
  end
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    user_id: user2.id
  )
  end
  2.times do
    Plant.create(
    name: Faker::Name.first_name,
    variant: Faker::Science.element,
    price: Faker::Number.number(digits: 2),
    pot_size: Faker::Number.number(digits: 2),
    user_id: user3.id
  )
  end
end