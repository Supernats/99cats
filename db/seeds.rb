# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cat.create!(:name => "gizmo", :sex => "M", :color => "chartreuse",
    :birth_date => 10.minutes.ago, :age => Time.now - 10.minutes.ago)


Cat.create!(:name => "tim", :sex => "F", :color => "brown",
    :birth_date => 33.minutes.ago, :age => Time.now - 33.minutes.ago)
