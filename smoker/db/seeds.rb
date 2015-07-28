# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SmokingArea.create(:name => '荻窪駅南口喫煙所', :address => '東京都杉並区荻窪', :latitude => 35.704346, :longitude => 139.621315)
SmokingArea.create(:name => '荻窪駅北口喫煙所', :address => '東京都杉並区荻窪', :latitude => 35.705177, :longitude => 139.620860)
SmokingArea.create(:name => 'ヒルサイド 2F テラス', :address => '東京都港区六本木６丁目 六本木ヒルズ', :latitude => 35.660659, :longitude => 139.730104)
SmokingArea.create(:name => 'ヒルサイド 2F TOHOシネマズ 入口右側', :address => '東京都港区六本木６丁目 六本木ヒルズ', :latitude => 35.659900, :longitude => 139.729804)
