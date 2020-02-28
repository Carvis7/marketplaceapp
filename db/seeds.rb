

5.times do
  Plant.create(
  name: Faker::Name.first_name,
  variant: Faker::Science.element,
  price: Faker::Number.number(digits: 2)
)
end