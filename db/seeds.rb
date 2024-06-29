# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data (optional)
Level.destroy_all

# Create level 1
Level.create!(
  level_int: 1,
  title: 'The Beginning'
)

puts 'Seed data for levels created!'
