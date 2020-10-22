require 'faker'

50.times do
  City.create!(
    name: Faker::Address.city
  )
  Dog.create!(
  name: Faker::Creature::Dog.name,
  city_id: City.find(rand(City.first.id..City.last.id)).id
  ) 
  Dogsitter.create!(
  name: Faker::Name.name,
  city_id: City.find(rand(City.first.id..City.last.id)).id
  )
  
  Stroll.create!(
    dog_id: Dog.find(rand(Dog.first.id..Dog.last.id)).id,
    dogsitter_id: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)).id
  ) 
end