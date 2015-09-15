# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usernames = %w(andrew jacob samantha danielle marcie polo john)

usernames.each_with_index do |name, idx|
  User.create(username: "#{name}")

end

Contact.create(name: "Andrew", email: "andrew@gmail.com", user_id: 1)
Contact.create(name: "Jacob" ,email: "jacob@gmail.com", user_id: 2)
Contact.create(name: "Samantha" ,email: "samantha@gmail.com", user_id: 3)
Contact.create(name: "Danielle" ,email: "danielle@gmail.com", user_id: 4)
Contact.create(name: "Marcie" ,email: "marcie@gmail.com", user_id: 5)
Contact.create(name: "Polo" ,email: "polo@gmail.com", user_id: 6)
Contact.create(name: "John" ,email: "john@gmail.com", user_id: 7)

ContactShare.create(user_id: 1, contact_id: 2)
ContactShare.create(user_id: 1, contact_id: 3)
ContactShare.create(user_id: 1, contact_id: 4)
ContactShare.create(user_id: 1, contact_id: 5)
ContactShare.create(user_id: 1, contact_id: 6)
ContactShare.create(user_id: 1, contact_id: 7)


# validates :name, :email, :user_id, presence: true
