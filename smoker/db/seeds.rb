# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SmokingArea.create(:name => '荻窪駅南口喫煙所', :address => '東京都杉並区荻窪', :latitude => 35.70428, :longitude => 139.62112)
SmokingArea.create(:name => '荻窪駅北口喫煙所', :address => '東京都杉並区荻窪', :latitude => 35.70517, :longitude => 139.62085)
