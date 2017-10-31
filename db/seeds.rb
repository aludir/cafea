# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city_id: cities.first)

Lbg.create(name: 'Aalborg')
Lbg.create(name: 'Almada')
Lbg.create(name: 'Ankara')
Lbg.create(name: 'Athens')
Lbg.create(name: 'Aveiro')
Lbg.create(name: 'Barcelona')
Lbg.create(name: 'Belgrade')
Lbg.create(name: 'Brasov')
Lbg.create(name: 'Bratislava')
Lbg.create(name: 'Brno')
Lbg.create(name: 'Brussels')
Lbg.create(name: 'Brussels ULB')
Lbg.create(name: 'Bucharest')
Lbg.create(name: 'Budapest')
Lbg.create(name: 'Chania')
Lbg.create(name: 'Chisinau')
Lbg.create(name: 'Cluj-Napoca')
Lbg.create(name: 'Coimbra')
Lbg.create(name: 'Copenhagen')
Lbg.create(name: 'Delft')
Lbg.create(name: 'Ekaterinburg UrFU')
Lbg.create(name: 'ENSAM')
Lbg.create(name: 'ENSTA ParisTech')
Lbg.create(name: 'Erlangen')
Lbg.create(name: 'Gdansk')
Lbg.create(name: 'Ghent')
Lbg.create(name: 'Gliwice')
Lbg.create(name: 'Gothenburg')
Lbg.create(name: 'Graz')
Lbg.create(name: 'Grenoble')
Lbg.create(name: 'Helsinki')
Lbg.create(name: 'Iasi')
Lbg.create(name: 'Istanbul')
Lbg.create(name: 'Istanbul Yildiz')
Lbg.create(name: 'Izmir')
Lbg.create(name: 'Kaunas')
Lbg.create(name: 'Kiev')
Lbg.create(name: 'Kosice')
Lbg.create(name: 'Kraków')
Lbg.create(name: 'Las Palmas')
Lbg.create(name: 'Leuven')
Lbg.create(name: 'Liege')
Lbg.create(name: 'Lisbon')
Lbg.create(name: 'Ljubljana')
Lbg.create(name: 'Lodz')
Lbg.create(name: 'Louvain-la-Neuve')
Lbg.create(name: 'Lund')
Lbg.create(name: 'Lviv')
Lbg.create(name: 'Lyon')
Lbg.create(name: 'Madrid')
Lbg.create(name: 'Madrid Carlos III')
Lbg.create(name: 'Maribor')
Lbg.create(name: 'Messina')
Lbg.create(name: 'Milan')
Lbg.create(name: 'Moscow')
Lbg.create(name: 'Mostar')
Lbg.create(name: 'Nancy')
Lbg.create(name: 'Naples')
Lbg.create(name: 'Nis')
Lbg.create(name: 'Novi Sad')
Lbg.create(name: 'Paris Polytechnique')
Lbg.create(name: 'Patras')
Lbg.create(name: 'Podgorica')
Lbg.create(name: 'Porto')
Lbg.create(name: 'Prague')
Lbg.create(name: 'Riga')
Lbg.create(name: 'Rome')
Lbg.create(name: 'Rome Tor Vergata')
Lbg.create(name: 'Saint Petersburg')
Lbg.create(name: 'Skopje')
Lbg.create(name: 'Sofia')
Lbg.create(name: 'Stockholm')
Lbg.create(name: 'Supélec')
Lbg.create(name: 'Tallinn')
Lbg.create(name: 'Tampere')
Lbg.create(name: 'Thessaloniki')
Lbg.create(name: 'Timisoara')
Lbg.create(name: 'Trento')
Lbg.create(name: 'Trondheim')
Lbg.create(name: 'Turin')
Lbg.create(name: 'Uppsala')
Lbg.create(name: 'Valencia')
Lbg.create(name: 'Valladolid')
Lbg.create(name: 'Veszprém')
Lbg.create(name: 'Vienna')
Lbg.create(name: 'Vinnytsia')
Lbg.create(name: 'Warsaw')
Lbg.create(name: 'Wroclaw')
Lbg.create(name: 'Zagreb')
Lbg.create(name: 'Zaporizhzhya')

15.times do
  Interest.create(
    title: Faker::Commerce.product_name,
    description: Faker::Company.bs
  )
end

30.times do
  password = Faker::Internet.password
  user = User.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    birth_date: Faker::Date.between(40.years.ago,20.years.ago),
    gender: User.genders.to_a.sample.first,
    password: password,
    password_confirmation: password,
    visited_announcements_at: DateTime.now,
    uuid: SecureRandom.hex(6)
  )

  (1..3).to_a.sample.times do
    user.lbgs << Lbg.all.sample
  end

  (1..3).to_a.sample.times do
    user.interests << Interest.all.sample
  end

  (1..3).to_a.sample.times do
    Language.create(
      name: Faker::StarTrek.specie,
      level: (1..5).to_a.sample,
      user: user
    )
  end
end

User.create!(
  name: 'Tassos',
  surname: 'Natsakis',
  email: 'tassos@eipieq.com',
  password: '12345678',
  password_confirmation: '12345678',
  uuid: SecureRandom.hex(6),
  birth_date: Faker::Date.between(40.years.ago,20.years.ago)
)
