Kennel.destroy_all
User.destroy_all
Booking.destroy_all

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

first_kennel = Kennel.create!(
  user: user_booker,
  city:"Lyon",
  address:"24 rue de la Fleur",
  description:"I will take care of your dog"
)

first_booking = Booking.create!(
  start_date: ('08-12-2017').to_datetime,
  end_date: ('18-12-2017').to_datetime,
  kennel: first_kennel,
  user: user_renter,
  confirmation_status: true
)
