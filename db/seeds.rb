# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if !User.where(:email => 'admin@gmail.com').present?
	user = User.new
	user.email = 'admin@gmail.com'
	user.password = '1234'
	user.password_confirmation = '1234'
	user.save

	profile = Profile.new
	profile.firstname = 'milad'
	profile.lastname = 'kazemi'
	profile.age = 22
	profile.email = user.email
	profile.user = user
	profile.role = "admin"
	profile.save
end
