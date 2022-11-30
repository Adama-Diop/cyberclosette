# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Clothe.destroy_all
Category.destroy_all
Mood.destroy_all
Season.destroy_all
Color.destroy_all
User.destroy_all

user1 = User.create(email: "coucou@gmail.com", password: "coucou")
MOODS = ["travail", "soirée", "week-end"]
SEASONS = ["été", "automne", "hiver", "printemps"]
CATEGORIES = ["top", "bottom", "shoes"]
COLORS = { black: "rgb(0, 0, 0)", white: "rgb(255, 255, 255)", grey: "rgb(125, 125, 125)",
   red: "rgb(255, 51, 0)", blue: "rgb(0, 102, 255)", green: "rgb(51, 204, 51)",
  yellow: "rgb(255, 255, 0)" }
# 20.times do
#   c = Clothe.new(
#   c.mood= MOODS.sample
#   c.season=  SEASONS.sample
#   )
# ADJS = ["Extra", "Super", "Genial"]
# NAMES = ["T-shirt", "short", "jupe", "pantalon"]

COLORS.each do |c, rgb|
  Color.create(name: c, rgb: rgb)
end

SEASONS.each do |toto|
  Season.create(name: toto)
end

CATEGORIES.each do |c|
  Category.create(name: c)
end

MOODS.each do |mood_name|
  Mood.create(name: mood_name)
end

20.times do |i|
  c = Clothe.new
  c.categories = [Category.all.sample]
  c.user = User.last
  c.moods = [Mood.all.sample]
  c.seasons = [Season.all.sample]
  c.color = Color.all.sample
  c.save
end
# clothe1 = Clothe.new(user: user1, color: color1, name: "pull")
# clothe1.photo.attach
# clothe1.save
