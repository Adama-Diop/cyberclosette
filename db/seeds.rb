# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Clothe.destroy_all
Category.destroy_all
Mood.destroy_all
Season.destroy_all
Color.destroy_all
User.destroy_all


user_photo = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669123386/Capture_d_%C3%A9cran_2022-11-22_%C3%A0_14.22.44_w4jkic.png")
user1 = User.create(email: "coucou@gmail.com", password: "coucou", first_name: "Camille", date_of_birth: "1995-10-05",
city: "Marseille")
user1.photo.attach(io: user_photo, filename: "nini.png", content_type: "image/png")
user1.save
MOODS = ["travail", "soirée", "week-end"]
SEASONS = ["été", "automne", "hiver", "printemps"]
CATEGORIES = ["top", "bottom", "shoes"]
COLORS = { black: "rgb(0, 0, 0)", white: "rgb(255, 255, 255)", grey: "rgb(125, 125, 125)",
   red: "rgb(255, 51, 0)", blue: "rgb(0, 102, 255)", green: "rgb(51, 204, 51)",
  yellow: "rgb(255, 255, 0)", pink: "rgb(255, 192, 203)" }


COLORS.each do |c, rgb|
  Color.create!(name: c, rgb: rgb)
end

SEASONS.each do |toto|
  Season.create!(name: toto)
end

CATEGORIES.each do |c|
  Category.create!(name: c)
end

MOODS.each do |mood_name|
  Mood.create!(name: mood_name)
end

# 20.times do |i|
#   c = Clothe.new
#   c.categories = [Category.all.sample]
#   c.user = User.last
#   c.moods = [Mood.all.sample]
#   c.seasons = [Season.all.sample]
#   c.color = Color.all.sample
#   c.save
# end
# clothe1 = Clothe.new(user: user1, color: color1, name: "pull")
# clothe1.photo.attach
# clothe1.save

file1 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669908365/Cyberclosette/IMG_9518_mlw8jl.png")
clothe1 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe1.photo.attach(io: file1, filename: "top1.png", content_type: "image/png")
clothe1.save



file3 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669908172/Cyberclosette/IMG_9515_arhlx9.png")
clothe3 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe3.photo.attach(io: file3, filename: "top2.png", content_type: "image/png")
clothe3.save

file4 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669908615/Cyberclosette/IMG_9523_okcdd4.png")
clothe4 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe4.photo.attach(io: file4, filename: "top3.png", content_type: "image/png")
clothe4.save

file5 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669908616/Cyberclosette/IMG_9524_wj6esr.png")
clothe5 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe5.photo.attach(io: file5, filename: "skirt1.png", content_type: "image/png")
clothe5.save

file6 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669908977/Cyberclosette/IMG_9526_meycbm.png")
clothe6 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe6.photo.attach(io: file6, filename: "shoes1.png", content_type: "image/png")
clothe6.save

file7 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669909927/Cyberclosette/IMG_9533_ljrcd0.png")
clothe7 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe7.photo.attach(io: file7, filename: "shoes2.png", content_type: "image/png")
clothe7.save

file8 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669909925/Cyberclosette/IMG_9532_rj1rso.png")
clothe8 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe8.photo.attach(io: file8, filename: "shoes3.png", content_type: "image/png")
clothe8.save

file9 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669909924/Cyberclosette/IMG_9530_k09dky.png")
clothe9 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe9.photo.attach(io: file9, filename: "shoes4.png", content_type: "image/png")
clothe9.save

file10 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911042/Cyberclosette/IMG_9543_zwt5f3.png")
clothe10 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe10.photo.attach(io: file10, filename: "skirt2.png", content_type: "image/png")
clothe10.save

file11 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911045/Cyberclosette/IMG_9544_x1pbwl.png")
clothe11 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe11.photo.attach(io: file11, filename: "top4.png", content_type: "image/png")
clothe11.save

file12 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911048/Cyberclosette/IMG_9545_rxx8cv.png")
clothe12 = Clothe.new(user: user1, color: Color.find_by(name: "yellow"))
clothe12.photo.attach(io: file12, filename: "skirt3.png", content_type: "image/png")
clothe12.save

file13 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911050/Cyberclosette/IMG_9546_fmxixs.png")
clothe13 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe13.photo.attach(io: file13, filename: "pants2.png", content_type: "image/png")
clothe13.save

file14 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911058/Cyberclosette/IMG_9547_zis8vj.png")
clothe14 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe14.photo.attach(io: file14, filename: "top5.png", content_type: "image/png")
clothe14.save

file15 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911062/Cyberclosette/IMG_9549_z7ao6x.png")
clothe15 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe15.photo.attach(io: file15, filename: "pants3.png", content_type: "image/png")
clothe15.save

file16 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911065/Cyberclosette/IMG_9550_qmfnnb.png")
clothe16 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe16.photo.attach(io: file16, filename: "pants4.png", content_type: "image/png")
clothe16.save

file17 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669975144/vetementvirtuel_zlq8w8.png")
clothe17 = Clothe.new(user: user1, color: Color.find_by(name: "pink"))
clothe17.photo.attach(io: file17, filename: "top6.png", content_type: "image/png")
clothe17.save

ClotheMood.create(clothe: clothe1, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe3, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe4, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe5, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe6, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe7, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe8, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe9, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe10, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe11, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe12, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe13, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe14, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe15, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe16, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe17, mood: Mood.find_by(name: "week-end"))

ClotheCategory.create(clothe: clothe1, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe3, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe4, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe5, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe6, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe7, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe8, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe9, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe10, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe11, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe12, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe13, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe14, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe15, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe16, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe17, category: Category.find_by(name: "top"))

ClotheSeason.create(clothe: clothe1, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe3, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe4, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe5, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe6, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe7, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe8, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe9, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe10, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe11, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe12, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe13, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe14, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe15, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe16, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe17, season: Season.find_by(name: "printemps"))
