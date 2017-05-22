user = User.create(
  email: 'test_1@gmail.com',
  password: 'password',
  first_name: 'Julie',
  last_name: 'Tartempion'
)

Kennel.create(
  user: user,
  city:"Lyon",
  address:"24 rue de la Fleur",
  description:"I will take care of your dog"
)
