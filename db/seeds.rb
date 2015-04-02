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
            birth_date: Time.now-10000, uuid: SecureRandom.hex(n=6))
User.create(id: '3', email: 'oanasipos@gmail.com', password: 'password',
            password_confirmation: 'password', name: 'Oana', surname: 'Sipos',
            birth_date: Time.now-1000000, uuid: SecureRandom.hex(n=6))

Email.delete_all
Email.create(id: '1', user_id: '1', address: 'john.doe@email.com',
             created_at: Time.now)
Email.create(id: '2', user_id: '1', address: 'john.doe@work.com',
             created_at: Time.now)

Address.delete_all
Address.create(id: '1', user_id: '1', street: 'Streetstraat', number: '42', zip: '94610',
               city: 'Hitchhike', country: 'Hikeland',
               created_at: Time.now)

Phone.delete_all
Phone.create(id: '1', user_id: '1', number: '0800800800', created_at: Time.now)

Language.delete_all
Language.create(id: '1', user_id: '1', name: 'Bringlish', level: 'native',
                created_at: Time.now)

Education.delete_all
Education.create(id: '1', user_id: '1', school: 'primary', start_date: Time.now,
                 end_date: Time.now, field: 'hitchikereeing', grade: '1',
                 created_at: Time.now)

Lbg.delete_all
Lbg.create(id: '1', name: 'iamtheBEST', created_at: Time.now)

Announcement.delete_all
Announcement.create(id: '1', user_id: '1', title: 'My first announcement',
                    body: 'I want to travel to Japan. Can somebody water my
                          plants while I am away? Ah, and maybe a bed in JP?',
                    created_at: Time.now)

Comment.delete_all
Comment.create(id: '1', user_id: '1', body: 'If you have orchids, they do not need water!',
                announcement_id: '1', created_at: Time.now)

Tag.delete_all
Tag.create(id: '1', name: 'BEST', created_at: Time.now)
Tag.create(id: '2', name: 'Travelling', created_at: Time.now)
Tag.create(id: '3', name: 'Fun', created_at: Time.now)
Tag.create(id: '4', name: 'Business', created_at: Time.now)
