# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Task.create(description: "Buy Milk", deadline: DateTime.new(2023,8,31), completed: false)
Task.create(description: "Buy Eggs", deadline: DateTime.new(2023,8,31), completed: false)
Task.create(description: "Buy Salt", deadline: DateTime.new(2023,9,1), completed: false)