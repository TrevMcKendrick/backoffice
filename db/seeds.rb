# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.create(:first_name => "Chris", :company_id => "1")
Customer.create(:first_name => "Breanna", :company_id => "2")
Customer.create(:first_name => "Barbara", :company_id => "3")

Company.create(:name => "SuperMegaUltraGroovy", :id => "1")
Company.create(:name => "Breanna McKendrick Photography", :id => "2")
Company.create(:name => "RobinsonBurnett and Associates", :id => "3")
