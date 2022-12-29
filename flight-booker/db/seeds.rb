# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(code: "ATL")
Airport.create(code: "DEN")
Airport.create(code: "ORD")
Airport.create(code: "LAX")
Airport.create(code: "CLT")
Airport.create(code: "MCO")
Airport.create(code: "CAN")
Airport.create(code: "CTU")

Flight.create(departure_id: 2, arrival_id: 4, duration: 480, starttime: '2023-02-22T06:15:06+00:00')
Flight.create(departure_id: 3, arrival_id: 5, duration: 280, starttime: '2023-03-13T12:05:06+00:00')
Flight.create(departure_id: 4, arrival_id: 2, duration: 660, starttime: '2023-04-02T14:24:06+00:00')
