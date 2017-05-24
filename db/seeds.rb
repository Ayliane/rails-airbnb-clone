Kennel.destroy_all
User.destroy_all
Booking.destroy_all

kennel_1_url = "http://www.chiens-online.com/_upload/ressources/global/fiches_de_races/toutes_photos_CGA_resized/cocker_spaniel_bebes_gb.JPG"
kennel_2_url = "http://i667.photobucket.com/albums/vv39/primitivedogs/shiba-inu-blanc-funny-dog.jpg"

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
  description: "I love pups !"
)

second_kennel.save!
second_kennel.photo_url = kennel_2_url

first_booking = Booking.create!(
  start_date: ('08-12-2017').to_datetime,
  end_date: ('18-12-2017').to_datetime,
  kennel: first_kennel,
  user: user_renter,
  confirmation_status: true
)
