# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city_id: cities.first)

# User.delete_all
# User.create(id: '1', email: 'john.doe@email.com', password: 'password',
            # password_confirmation: 'password', gender: 1, name: 'John', surname: 'Doe',
            # birth_date: Time.now, uuid: SecureRandom.hex(n=6))
# User.create(id: '2', email: 'tassos@hise-mail.com', password: 'password',
            # password_confirmation: 'password', gender: 1, name: 'Tassos', surname: 'Natsakis',
            # birth_date: Time.gm(1985,5,30), uuid: SecureRandom.hex(n=6))
# User.create(id: '3',  email: 'oanasipos@her-email.com', password: 'password',
            # password_confirmation: 'password', gender: 2, name: 'Oana', surname: 'Sipos',
            # birth_date: Time.gm(1985,03,7), uuid: SecureRandom.hex(n=6))
# User.create(id: '4',  email: 'filip@his-email.com', password: 'password',
            # password_confirmation: 'password', gender: 1, name: 'Filip', surname: 'Kis',
            # birth_date: Time.gm(1988,8,17), uuid: SecureRandom.hex(n=6))
# User.create(id: '5',  email: 'giovanni@ice-cream.com', password: 'password',
            # password_confirmation: 'password', gender: 1 , name: 'Giovanni Alfredo', surname: 'Camoralli',
            # birth_date: Time.gm(1972,3,17), uuid: SecureRandom.hex(n=6))
# User.create(id: '6',  email: 'ida@very-old.com', password: 'password',
            # password_confirmation: 'password', gender: 2, name: 'Ida Lau', surname: 'Borch',
            # birth_date: Time.gm(1966,4,30), uuid: SecureRandom.hex(n=6))
# User.create(id: '7',  email: 'zoltan@zoltan.com', password: 'password',
            # password_confirmation: 'password', gender: 1, name: 'Zoltan', surname: 'Bartalis',
            # birth_date: Time.gm(1988,8,17), uuid: SecureRandom.hex(n=6))
# User.create(id: '8',  email: 'demo@account.com', password: 'password',
            # password_confirmation: 'password', gender: 1, name: 'Random', surname: 'Alumni',
            # birth_date: Time.gm(1989,7,20), uuid: SecureRandom.hex(n=6))
#             
# Category.delete_all
# Category.create(id: '1', name: 'E-mail')
# Category.create(id: '2', name: 'Phone')
# Category.create(id: '3', name: 'Website')
# Category.create(id: '4', name: 'Instant messaging')
            

# Contact.delete_all
# Contact.create(user_id: '1', content:  'john.doe@email.com', description: 'Personal', category_id: '1')
# Contact.create(user_id: '1', content:  'john.doe@work.com', description: 'Work', category_id: '1')
# Contact.create(user_id: '3', content:  'oanasipos@oanasipos.be', description: 'Work', category_id: '1')
# Contact.create(user_id: '3', content:  'oana@gmailexecutives.com', description: 'Personal', category_id: '1')
# Contact.create(user_id: '3', content:  'oana@ambassador.ro', description: 'Start-up', category_id: '1')
# Contact.create(user_id: '4', content:  'filip@kakamaka.com', description: 'Personal', category_id: '1')
# Contact.create(user_id: '5', content:  'gianA@alpha.com', description: 'Personal', category_id: '1')
# Contact.create(user_id: '6', content:  'ida@best.eu.borg', description: 'BEST', category_id: '1')
# Contact.create(user_id: '7', content:  'zoltan@tribe.gr', description: 'Undercover', category_id: '1')
# Contact.create(user_id: '2', content:  'natsakis@gmail.com', description: 'Not-in-use', category_id: '1')
# Contact.create(user_id: '1', content:  '+3349223342', description: 'Personal', category_id: '2')
# Contact.create(user_id: '1', content:  '+30232345123', description: 'Work', category_id: '2')
# Contact.create(user_id: '2', content:  '+32499276382', description: 'Personal', category_id: '2')
# Contact.create(user_id: '3', content:  '+32453462346', description: 'Work', category_id: '2')
# Contact.create(user_id: '3', content:  '+21231234323', description: 'Personal', category_id: '2')
# Contact.create(user_id: '3', content:  '+332423554332', description: 'Start-up', category_id: '2')
# Contact.create(user_id: '4', content:  '+1254254353433', description: 'Personal', category_id: '2')
# Contact.create(user_id: '5', content:  '+3323455422', description: 'Personal', category_id: '2')
# Contact.create(user_id: '6', content:  '+43345123445', description: 'BEST', category_id: '2')
# Contact.create(user_id: '7', content:  '+033244313', description: 'Undercover', category_id: '2')
# Contact.create(user_id: '2', content:  '+44534243524', description: 'Not-in-use', category_id: '2')
# Contact.create(user_id: '1', content:  'www.cia.org', description: 'Personal', category_id: '3')
# Contact.create(user_id: '1', content:  'www.google.com', description: 'Personal', category_id: '3')
# Contact.create(user_id: '2', content:  'www.natsakis.com', description: 'Personal', category_id: '3')
# Contact.create(user_id: '3', content:  'www.aludir.net', description: 'Cool project', category_id: '3')
# Contact.create(user_id: '3', content:  'www.courseware.ro', description: 'Start-up', category_id: '3')
# 
# City.delete_all
# City.create(id: '1', name: 'Hitchhike')
# City.create(id: '2', name: 'Leuven')
# City.create(id: '3', name: 'Thessaloniki')
# City.create(id: '4', name: 'Satu Mare')
# City.create(id: '5', name: 'Ankh-Morpork')

# Address.delete_all
# Address.create(user_id: '1', street: 'Streetstraat', number: '42', zip: '94610',
               # city_id: '1', country_id: 'GR', description: 'Home')
# Address.create(user_id: '2', street: 'Diestsetsestraat', number: '50', zip: '3000',
               # city_id: '2', country_id: 'US', description: 'Home')
# Address.create(user_id: '2', street: 'Doxas', number: '3', zip: '52324',
               # city_id: '3', country_id: 'BE', description: 'Parents')
# Address.create(user_id: '3', street: 'Bloemstraat', number: '50', zip: '6660',
               # city_id: '2', country_id: 'NL', description: 'Home')
# Address.create(user_id: '3', street: 'Somesip', number: '22', zip: '543345',
               # city_id: '4', country_id: 'JP', description: 'Parents')
# Address.create(user_id: '3', street: 'Randomiac', number: '5', zip: '5545',
               # city_id: '5', country_id: 'ES', description: 'Dream')
# 
# Language.delete_all
# Language.create(user_id: '1', name: 'Bringlish', level: 'native')
# Language.create(user_id: '1', name: 'Estonian', level: 'native')
# Language.create(user_id: '1', name: 'Thai', level: 'native')
# Language.create(user_id: '2', name: 'Romanian', level: 'mother-in-law level')
# Language.create(user_id: '2', name: 'English', level: 'profficient')
# Language.create(user_id: '2', name: 'Greek', level: 'native')
# Language.create(user_id: '3', name: 'Romanian', level: 'native')
# Language.create(user_id: '3', name: 'Greek', level: 'mother-in-law level')
# Language.create(user_id: '3', name: 'English', level: 'profficient')
# Language.create(user_id: '4', name: 'Hrvatska', level: 'dobro')
# Language.create(user_id: '5', name: 'Itaaalian', level: 'perfeto')
# Language.create(user_id: '6', name: 'Norwegian', level: 'native')
# Language.create(user_id: '7', name: 'Hungarian', level: 'native')
# Language.create(user_id: '7', name: 'English', level: 'baaaad')
# 
# Education.delete_all
# Education.create(user_id: '1', school: 'primary', start_date: Time.now,
                 # end_date: Time.now, field: 'hitchikereeing', grade: '1')

Lbg.delete_all
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

# Announcement.delete_all
# Announcement.create(id: '1', user_id: '1', title: 'My first announcement',
                    # body: 'I want to travel to Japan. Can somebody water my
                          # plants while I am away? Ah, and maybe a bed in JP?')
# Announcement.create(id: '2', user_id: '2', title: 'This looks awesome',
                    # body: 'Hey all, I just discovered that I can make announcements
                    # here. This system is so awesome and will make the everyday
                    # communication of alumni sooo much better!')
# Announcement.create(id: '3', user_id: '7', title: 'Looking for collaborators',
                    # body: 'Dear alumni. I am looking for collaborators in the
                    # area of Brussels interested in brewing some beer. I have
                    # some savings that I would like to invest')
# 
# Comment.delete_all
# Comment.create(user_id: '1', body: 'If you have orchids, they do not need water!',
                # announcement_id: '1')
# Comment.create(user_id: '2', body: 'Hey, use the search function of aludir to find
                # what you need!', announcement_id: '3')
# Comment.create(user_id: '3', body: 'Tassos is right! We didn\'t waste our time coding
                # this platform. Please use it!', announcement_id: '3')
# 
# Tag.delete_all
# Tag.create(id: '1', name: 'BEST')
# Tag.create(id: '2', name: 'Travelling')
# Tag.create(id: '3', name: 'Fun')
# Tag.create(id: '4', name: 'Business')
# Tag.create(id: '5', name: 'Spam')
# Tag.create(id: '6', name: 'Technology')
# Tag.create(id: '7', name: 'Philosophy')
# Tag.create(id: '8', name: 'Events')
# Tag.create(id: '9', name: 'Love')
# Tag.create(id: '10', name: 'AlumniNET')
# 
# Interest.delete_all
# Interest.create(id: '1', title: 'Beer', description: 'Isn\'t it obvious?', initiator: '3')
# Interest.create(id: '2', title: 'Football', description: 'What? You don\t care about football?!?1', initiator: '1')
# Interest.create(id: '3', title: 'Entrepreneurship', description: 'Let\'s organise more ABCs!', initiator: '4')
# Interest.create(id: '4', title: 'Technology', description: 'Technology from Daft-punk', initiator: '2')
# Interest.create(id: '5', title: 'Fashion', description: 'Updates about latest fashion news', initiator: '5')
# Interest.create(id: '6', title: 'Ice-cream', description: 'Creating the perfect ice-cream', initiator: '6')
# Interest.create(id: '7', title: 'Dentistry', description: 'I always wanted to be a dentist', initiator: '7')
