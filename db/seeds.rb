# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(id: '1', email: 'john.doe@email.com', password: 'password',
            password_confirmation: 'password', name: 'John', surname: 'Doe',
            birth_date: Time.now, uuid: SecureRandom.hex(n=6))
User.create(id: '2', email: 'tassos@natsakis.com', password: 'password',
            password_confirmation: 'password', name: 'Tassos', surname: 'Natsakis',
            birth_date: Time.gm(1985,5,30), uuid: SecureRandom.hex(n=6))
User.create(id: '3',  email: 'oanasipos@gmail.com', password: 'password',
            password_confirmation: 'password', name: 'Oana', surname: 'Sipos',
            birth_date: Time.gm(1985,03,7), uuid: SecureRandom.hex(n=6))
User.create(id: '4',  email: 'filip.kis@gmail.com', password: 'password',
            password_confirmation: 'password', name: 'Filip', surname: 'Kis',
            birth_date: Time.gm(1988,8,17), uuid: SecureRandom.hex(n=6))
User.create(id: '5',  email: 'giovanni@gmail.com', password: 'password',
            password_confirmation: 'password', name: 'Giovanni Alfredo', surname: 'Camoralli',
            birth_date: Time.gm(1972,3,17), uuid: SecureRandom.hex(n=6))
User.create(id: '6',  email: 'ida.lao@gmail.com', password: 'password',
            password_confirmation: 'password', name: 'Ida Lau', surname: 'Borch',
            birth_date: Time.gm(1966,4,30), uuid: SecureRandom.hex(n=6))
User.create(id: '7',  email: 'zoltan@zoltan.com', password: 'password',
            password_confirmation: 'password', name: 'Zoltan', surname: 'Bartalis',
            birth_date: Time.gm(1988,8,17), uuid: SecureRandom.hex(n=6))
            

Email.delete_all
Email.create(user_id: '1', address: 'john.doe@email.com')#, type: 'Personal')
Email.create(user_id: '1', address: 'john.doe@work.com')#, type: 'Work')
Email.create(user_id: '2', address: 'tassos@natsakis.com')#, type: 'Personal')
Email.create(user_id: '3', address: 'oanasipos@up-nxt.be')#, type: 'Work')
Email.create(user_id: '3', address: 'oanasipos@gmail.com')#, type: 'Personal')
Email.create(user_id: '3', address: 'oanasipos@courseware.ro')#, type: 'Start-up')
Email.create(user_id: '4', address: 'filip.kis@gmail.com')#, type: 'Personal')
Email.create(user_id: '5', address: 'gianalfa@gmail.com')#, type: 'Personal')
Email.create(user_id: '6', address: 'ida.lao@best.eu.org')#, type: 'BEST')
Email.create(user_id: '7', address: 'zoltan@tribe.gr')#, type: 'Undercover')
Email.create(user_id: '2', address: 'natsakis.anastasios@gmail.com')#, type: 'Not-in-use')

Address.delete_all
Address.create(user_id: '1', street: 'Streetstraat', number: '42', zip: '94610',
               city: 'Hitchhike', country: 'Hikeland')

Phone.delete_all
Phone.create(user_id: '1', number: '0800800800')

Language.delete_all
Language.create(user_id: '1', name: 'Bringlish', level: 'native')
Language.create(user_id: '1', name: 'Estonian', level: 'native')
Language.create(user_id: '1', name: 'Thai', level: 'native')
Language.create(user_id: '2', name: 'Romanian', level: 'mother-in-law level')
Language.create(user_id: '2', name: 'English', level: 'profficient')
Language.create(user_id: '2', name: 'Greek', level: 'native')
Language.create(user_id: '3', name: 'Romanian', level: 'native')
Language.create(user_id: '3', name: 'Greek', level: 'mother-in-law level')
Language.create(user_id: '3', name: 'English', level: 'profficient')
Language.create(user_id: '4', name: 'Hrvatska', level: 'dobro')
Language.create(user_id: '5', name: 'Itaaalian', level: 'perfeto')
Language.create(user_id: '6', name: 'Norwegian', level: 'native')
Language.create(user_id: '7', name: 'Hungarian', level: 'native')
Language.create(user_id: '7', name: 'English', level: 'baaaad')

Education.delete_all
Education.create(user_id: '1', school: 'primary', start_date: Time.now,
                 end_date: Time.now, field: 'hitchikereeing', grade: '1')

Lbg.delete_all
Lbg.create(id: '1', name: 'iamtheBEST')

Announcement.delete_all
Announcement.create(id: '1', user_id: '1', title: 'My first announcement',
                    body: 'I want to travel to Japan. Can somebody water my
                          plants while I am away? Ah, and maybe a bed in JP?')
Announcement.create(id: '2', user_id: '2', title: 'This looks awesome',
                    body: 'Hey all, I just discovered that I can make announcements
                    here. This system is so awesome and will make the everyday
                    communication of alumni sooo much better!')
Announcement.create(id: '3', user_id: '7', title: 'Looking for collaborators',
                    body: 'Dear alumni. I am looking for collaborators in the
                    area of Brussels interested in brewing some beer. I have
                    some savings that I would like to invest')

Comment.delete_all
Comment.create(user_id: '1', body: 'If you have orchids, they do not need water!',
                announcement_id: '1')
Comment.create(user_id: '2', body: 'Hey, use the search function of aludir to find
                what you need!', announcement_id: '3')
Comment.create(user_id: '3', body: 'Tassos is right! We didn\'t waste our time coding
                this platform. Please use it!', announcement_id: '3')

Tag.delete_all
Tag.create(id: '1', name: 'BEST')
Tag.create(id: '2', name: 'Travelling')
Tag.create(id: '3', name: 'Fun')
Tag.create(id: '4', name: 'Business')
Tag.create(id: '5', name: 'Spam')
Tag.create(id: '6', name: 'Technology')
Tag.create(id: '7', name: 'Philosophy')
Tag.create(id: '8', name: 'Events')
Tag.create(id: '9', name: 'Love')
Tag.create(id: '10', name: 'AlumniNET')

Interest.create(id: '1', title: 'Beer', description: 'Isn\'t it obvious?', initiator: '3')
Interest.create(id: '2', title: 'Football', description: 'What? You don\t care about football?!?1', initiator: '1')
Interest.create(id: '3', title: 'Entrepreneurship', description: 'Let\'s organise more ABCs!', initiator: '4')
Interest.create(id: '4', title: 'Technology', description: 'Technology from Daft-punk', initiator: '2')
Interest.create(id: '5', title: 'Fashion', description: 'Updates about latest fashion news', initiator: '5')
Interest.create(id: '6', title: 'Ice-cream', description: 'Creating the perfect ice-cream', initiator: '6')
Interest.create(id: '7', title: 'Dentistry', description: 'I always wanted to be a dentist', initiator: '7')
