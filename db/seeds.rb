Kennel.destroy_all
User.destroy_all
Booking.destroy_all

kennel_1_url = "http://www.chiens-online.com/_upload/ressources/global/fiches_de_races/toutes_photos_CGA_resized/cocker_spaniel_bebes_gb.JPG"
kennel_2_url = "http://i667.photobucket.com/albums/vv39/primitivedogs/shiba-inu-blanc-funny-dog.jpg"
kennel_3_url = "http://media.topito.com/wp-content/uploads/2015/05/une-chiot.jpg"
kennel_4_url = "https://s-media-cache-ak0.pinimg.com/originals/6a/e6/94/6ae694525a895875edd4f326f6624204.jpg"
kennel_5_url = "http://medias.digitamix.com/11490/lequel-de-ces-chiots-est-le-plus-adorable-selon-vous-269685.jpg"
kennel_6_url = "https://s-media-cache-ak0.pinimg.com/originals/f5/bf/a3/f5bfa360be8fcfdb53ccc37b2692a8a5.jpg"
kennel_7_url = "https://static.wamiz.fr/uploads/prince%202.jpg"



user_booker = User.create!(
  email: 'test_1@gmail.com',
  password: 'password',
  first_name: 'Julie',
  last_name: 'Tartempion'
)

user_renter = User.create!(
  email: 'test_2@gmail.com',
  password: 'password',
  first_name: 'Thomas',
  last_name: 'Dupont'
)

first_kennel = Kennel.new(
  user: user_booker,
  city:"Lyon",
  address:"24 rue de la Fleur",
  description:"I will take care of your dog"
)

first_kennel.save!
first_kennel.photo_url = kennel_1_url

second_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "2 rue des Bleuets",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

second_kennel.save!
second_kennel.photo_url = kennel_2_url

third_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "3 place Bellecour",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

third_kennel.save!
third_kennel.photo_url = kennel_3_url

fourth_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "18 avenue Paul Bocuse",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

fourth_kennel.save!
fourth_kennel.photo_url = kennel_4_url

fifth_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "28 place de la tête d'or",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

fifth_kennel.save!
fifth_kennel.photo_url = kennel_5_url

seventh_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "chemin des allouettes",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

seventh_kennel.save!
seventh_kennel.photo_url = kennel_7_url

sixth_kennel = Kennel.new(
  user: user_booker,
  city: "Lyon",
  address: "44 rue Florence",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum quam obcaecati, itaque. Sit quo, libero beatae, quam quasi laboriosam quisquam, fugiat ullam eos totam maiores aperiam consectetur illo accusamus enim. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque odio mollitia voluptates voluptate voluptatem nobis a, necessitatibus dicta praesentium, aliquam, delectus provident qui quae animi ea fuga officiis accusamus ut! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit fugit minus, id ea, sed harum. Possimus magnam quia eaque tempora, maiores nemo, recusandae, commodi cumque, placeat pariatur odio modi nulla!"
)

sixth_kennel.save!
sixth_kennel.photo_url = kennel_6_url

first_booking = Booking.create!(
  start_date: ('08-12-2017').to_datetime,
  end_date: ('18-12-2017').to_datetime,
  kennel: first_kennel,
  user: user_renter,
  confirmation_status: true
)
