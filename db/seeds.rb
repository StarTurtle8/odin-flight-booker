# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flight.delete_all
Airport.delete_all

Airport.create(code: 'NYC')
Airport.create(code: 'FRA')
Airport.create(code: 'MIA')
Airport.create(code: 'LAX')
Airport.create(code: 'VAN')
Airport.create(code: 'SEA')

Flight.create(date: Date.new(2023, 3, 4, 7),
              duration: 8,
              departure_airport_id: Airport.find_by(code: 'NYC').id,
              arrival_airport_id: Airport.find_by(code: 'FRA').id)
Flight.create(date: Date.new(2023, 3, 4, 8),
              duration: 8,
              departure_airport_id: Airport.find_by(code: 'FRA').id,
              arrival_airport_id: Airport.find_by(code: 'NYC').id)
