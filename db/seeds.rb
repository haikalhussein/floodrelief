# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[:admin_mdec, :mdec].each do |role|
  Role.find_or_create_by( name: role )
end

User.create(name: 'admin', email: 'admin@mdec.com.my', password: 'password', password_confirmation: 'password').add_role(:admin_mdec)