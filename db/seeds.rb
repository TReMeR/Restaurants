Book.destroy_all
Genre.destroy_all

cafe = Genre.create!(name: 'Cafe')
restaurant = Genre.create!(name: 'Restaurant')
bar = Genre.create!(name: "Bar")
club = Genre.create!(name: "Night Club")

Book.create!([{
  title: "Мафия",
  author: "Семейный ресторан",
  description: "Probably my favorite science fiction book (and series) I've ever read. Hyperion is written in a style similar to The Canterbury Tales, in which a series of stories are told by the main characters. Each story is a gem in itself, but alude to the larger storyline. The scope of the story is ambitious - spanning time, planets religion and love.",
  rating: 5,
  genres: [restaurant]
},
{
  title: "Водка Бар",
  author: "Отдыхай весело",
  description: "Even though I respect Ive, I felt this biography only hit skin deep. It went over all the major events in his life, his passion for design, awards he achieved -- but that's really it. I dont't feel I know him anymore than before reading this.",
  rating: 4,
  genres: [club, bar, cafe]
},
{
  title: "Мама Мия",
  author: "Лучшая пицца",
  description: "Although this book focuses on the cognitive advantages to having children use technology from an early age, it is also an in depth look at how people can learn for themseves. As someone who was often distracted and bored at times during school, Mindstorms highlights some of the reasoning behind that feeling and what we can do as teachers to help minimize it.",
  rating: 3,
  genres: [cafe, restaurant]
},
{
  title: "СушиЯ",
  author: "Частичка Японии",
  description: "Although this book focuses on the cognitive advantages to having children use technology from an early age, it is also an in depth look at how people can learn for themseves. As someone who was often distracted and bored at times during school, Mindstorms highlights some of the reasoning behind that feeling and what we can do as teachers to help minimize it.",
  rating: 4,
  genres: [cafe, restaurant]
}])

p "Created #{Book.count} books"