# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.create(:first_name => "Chris", :company_id => "1")
Customer.create(:first_name => "Breanna", :company_id => "2")

Company.create(:name => "SuperMegaUltraGroovy", :id => "1", :stripe_id => "cus_58mDrNl1F4P4D4")
Company.create(:name => "Breanna McKendrick Photography", :id => "2", :stripe_id => "cus_58mDV6WbwbGr7g")
