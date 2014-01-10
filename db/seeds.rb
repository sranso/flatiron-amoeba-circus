# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Talent.create([{name: "Acrobat"},
  {name: "Contortionist"},
  {name: "Clown"},
  {name: "Juggler"},
  {name: "Freak"}])

Act.create([{name: "The Great Escape", date_time: "2014/12/31 11:59pm"}, 
  {name: "Feelings Friday", date_time: "2014/11/01 4pm"}, 
  {name: "Taking Toys", date_time: "2016/10/12 8pm"}])

Amoeba.create([{name: "Floo", act_id: 1, talent_id: 2},
  {name: "Floo", act_id: 1, talent_id: 1},
  {name: "Floo", act_id: 2, talent_id: 3},
  {name: "Floo", act_id: 2, talent_id: 4},
  {name: "Floo", act_id: 2, talent_id: 5},
  {name: "Floo", act_id: 3, talent_id: 5},
  {name: "Floo", act_id: 3, talent_id: 4},
  {name: "Floo", act_id: 3, talent_id: 3},
  {name: "Floo", act_id: 3, talent_id: 2},
  {name: "Floo", act_id: 3, talent_id: 1},
  {name: "Floo", act_id: 1, talent_id: 1}])