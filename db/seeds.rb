30.times do
  title     = Faker::Book.title
  publisher = Faker::Book.publisher
  genre     = Faker::Book.genre
  Book.create(
    title: title,
    publisher: publisher,
    genre: genre,
    image: open('app/assets/images/プロを目指す人のためのRuby入門.jpeg')
  )
end