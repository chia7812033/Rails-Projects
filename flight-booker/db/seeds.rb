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
Flight.create(departure_id: 1, arrival_id: 2, duration: 360, starttime: '2023-01-02T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 2, duration: 380, starttime: '2023-03-08T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 3, duration: 260, starttime: '2023-03-12T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 4, duration: 760, starttime: '2023-06-24T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 5, duration: 620, starttime: '2023-04-22T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 6, duration: 460, starttime: '2023-09-03T14:24:06+00:00')
Flight.create(departure_id: 1, arrival_id: 7, duration: 280, starttime: '2023-05-12T14:24:06+00:00')
