# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Country.destroy_all
Person.destory_all

City.create(name: 'London', population: 600)
City.create(name: 'Paris', population: 400)
City.create(name: 'Tokyo', population: 300)
City.create(name: 'Gander', population: 1600)
City.create(name: 'Timbuktu', population: 6100)

Country.create(name: 'UK', continent: 'Europe')
Country.create(name: 'France', continent: 'Europe')
Country.create(name: 'Japan', continent: 'Asia')
Country.create(name: 'Canada', continent: 'North America')
Country.create(name: 'Marituania', continent: 'Africa')
Country.create(name: 'Chile', continent: 'South America')

Person.create(name: 'Person1', native_tongue: 'Arabic', gender: 'male', country_id: 5, city_id: 5)

Person.create(name: 'Person2', native_tongue: 'Spanish', gender: 'female', country_id: 6, city_id: 4)

Person.create(name: 'Person3', native_tongue: 'French', gender: 'male', country_id: 4, city_id: 2)

Person.create(name: 'Person4', native_tongue: 'Japanese', gender: 'female', country_id: 3, city_id: 3)

Person.create(name: 'Person5', native_tongue: 'Portuguese', gender: 'male', country_id: 2, city_id: 1)