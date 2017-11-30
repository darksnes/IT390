# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Building.where(name: "Bull Run").first_or_create(name: "Bull Run")
Building.where(name: "Discovery Hall").first_or_create(name: "Discovery Hall")
Building.where(name: "Beacon Hall").first_or_create(name: "Beacon Hall")
Building.where(name: "Colgan Hall").first_or_create(name: "Colgan Hall")
Building.where(name: "Hylton Performing Arts Center").first_or_create(name: "Hylton Performing Arts Center")
Building.where(name: "Freedom Acquatics Center").first_or_create(name: "Freedom Acquatics Center")