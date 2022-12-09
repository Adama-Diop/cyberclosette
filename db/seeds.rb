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

file2 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670412218/IMG_9671_f3uzev.png")
clothe2 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe2.photo.attach(io: file2, filename: "top.png", content_type: "image/png")
clothe2.save

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

file15 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670578933/IMG_9726_ew1mxl.png")
clothe15 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe15.photo.attach(io: file15, filename: "pants7.png", content_type: "image/png")
clothe15.save

file16 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1669911065/Cyberclosette/IMG_9550_qmfnnb.png")
clothe16 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe16.photo.attach(io: file16, filename: "pants4.png", content_type: "image/png")
clothe16.save


file18 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670258647/IMG_9613_ksgvc3.png")
clothe18 = Clothe.new(user: user1, color: Color.find_by(name: "pink"))
clothe18.photo.attach(io: file18, filename: "top7.png", content_type: "image/png")
clothe18.save

file19 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670258685/IMG_9614_rkmjzu.png")
clothe19 = Clothe.new(user: user1, color: Color.find_by(name: "pink"))
clothe19.photo.attach(io: file19, filename: "skirt4.png", content_type: "image/png")
clothe19.save

file20 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670258693/IMG_9615_og6rvh.png")
clothe20 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe20.photo.attach(io: file20, filename: "shoes5.png", content_type: "image/png")
clothe20.save

file21 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323586/IMG_9641_diwshf.png")
clothe21 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe21.photo.attach(io: file21, filename: "skirt5.png", content_type: "image/png")
clothe21.save

file22 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323587/IMG_9637_jovf7n.png")
clothe22 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe22.photo.attach(io: file22, filename: "skirt6.png", content_type: "image/png")
clothe22.save

file23 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323589/IMG_9640_lltd4u.png")
clothe23 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe23.photo.attach(io: file23, filename: "pants5.png", content_type: "image/png")
clothe23.save

file24 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323591/IMG_9639_zwvd0u.png")
clothe24 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe24.photo.attach(io: file24, filename: "top8.png", content_type: "image/png")
clothe24.save

file25 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323593/IMG_9638_fjfdap.png")
clothe25 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe25.photo.attach(io: file25, filename: "top9.png", content_type: "image/png")
clothe25.save

file26 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323596/IMG_9636_fcue47.png")
clothe26 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe26.photo.attach(io: file26, filename: "top10.png", content_type: "image/png")
clothe26.save

file27 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323598/IMG_9635_m301eq.png")
clothe27 = Clothe.new(user: user1, color: Color.find_by(name: "red"))
clothe27.photo.attach(io: file27, filename: "shoes6.png", content_type: "image/png")
clothe27.save

file28 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670323601/IMG_9626_foansz.png")
clothe28 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe28.photo.attach(io: file28, filename: "shoes7.png", content_type: "image/png")
clothe28.save

file29 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670412219/IMG_9665_lkzcbl.png")
clothe29 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe29.photo.attach(io: file29, filename: "skirt7.png", content_type: "image/png")
clothe29.save

file30 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670412221/IMG_9664_b0vwkb.png")
clothe30 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe30.photo.attach(io: file30, filename: "shoes8.png", content_type: "image/png")
clothe30.save

file31 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670412222/IMG_9663_fouzgx.png")
clothe31 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe31.photo.attach(io: file31, filename: "top11.png", content_type: "image/png")
clothe31.save

file32 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670412226/IMG_9654_i429ya.png")
clothe32 = Clothe.new(user: user1, color: Color.find_by(name: "grey"))
clothe32.photo.attach(io: file32, filename: "top11.png", content_type: "image/png")
clothe32.save

file33 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670510914/IMG_9719_hovbls.png")
clothe33 = Clothe.new(user: user1, color: Color.find_by(name: "white"))
clothe33.photo.attach(io: file33, filename: "top12.png", content_type: "image/png")
clothe33.save

file34 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670578945/IMG_9727_tk66hx.png")
clothe34 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe34.photo.attach(io: file34, filename: "skirt8.png", content_type: "image/png")
clothe34.save

file35 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670510003/IMG_9714_ccsyzs.png")
clothe35 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe35.photo.attach(io: file35, filename: "top14.png", content_type: "image/png")
clothe35.save

file36 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670510012/IMG_9712_rx4thm.png")
clothe36 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe36.photo.attach(io: file36, filename: "shoes9.png", content_type: "image/png")
clothe36.save

file37 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670510916/IMG_9717_aomjtj.png")
clothe37 = Clothe.new(user: user1, color: Color.find_by(name: "black"))
clothe37.photo.attach(io: file37, filename: "pants6.png", content_type: "image/png")
clothe37.save

file38 = URI.open("https://res.cloudinary.com/dplkc6qh4/image/upload/v1670578929/IMG_9728_icwcaq.png")
clothe38 = Clothe.new(user: user1, color: Color.find_by(name: "blue"))
clothe38.photo.attach(io: file38, filename: "jacket.png", content_type: "image/png")
clothe38.save

ClotheMood.create(clothe: clothe1, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe2, mood: Mood.find_by(name: "soirée"))
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
ClotheMood.create(clothe: clothe15, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe16, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe18, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe19, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe20, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe21, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe22, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe23, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe24, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe25, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe26, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe27, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe28, mood: Mood.find_by(name: "week-end"))
ClotheMood.create(clothe: clothe29, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe30, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe31, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe32, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe33, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe34, mood: Mood.find_by(name: "soirée"))
ClotheMood.create(clothe: clothe35, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe36, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe37, mood: Mood.find_by(name: "travail"))
ClotheMood.create(clothe: clothe38, mood: Mood.find_by(name: "travail"))





ClotheCategory.create(clothe: clothe1, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe2, category: Category.find_by(name: "top"))
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
ClotheCategory.create(clothe: clothe18, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe19, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe20, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe21, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe22, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe23, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe24, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe25, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe26, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe27, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe28, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe29, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe30, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe31, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe32, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe33, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe34, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe35, category: Category.find_by(name: "top"))
ClotheCategory.create(clothe: clothe36, category: Category.find_by(name: "shoes"))
ClotheCategory.create(clothe: clothe37, category: Category.find_by(name: "bottom"))
ClotheCategory.create(clothe: clothe38, category: Category.find_by(name: "top"))




ClotheSeason.create(clothe: clothe1, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe2, season: Season.find_by(name: "automne"))
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
ClotheSeason.create(clothe: clothe15, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe16, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe18, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe19, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe20, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe21, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe22, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe23, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe24, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe25, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe26, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe27, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe28, season: Season.find_by(name: "printemps"))
ClotheSeason.create(clothe: clothe29, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe30, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe31, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe32, season: Season.find_by(name: "hiver"))
ClotheSeason.create(clothe: clothe33, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe34, season: Season.find_by(name: "été"))
ClotheSeason.create(clothe: clothe35, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe36, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe37, season: Season.find_by(name: "automne"))
ClotheSeason.create(clothe: clothe38, season: Season.find_by(name: "automne"))
