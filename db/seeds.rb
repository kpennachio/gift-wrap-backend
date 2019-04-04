# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "start seed file"



PersonGiftIdea.delete_all
EventGiftIdea.delete_all
PersonGiftEvent.delete_all
Budget.delete_all
Event.delete_all
Person.delete_all
Gift.delete_all
User.delete_all

katie = User.create(username: "katie")

budget = Budget.create(user_id: katie.id, year: 2019, budget: 100)

allie = Person.create(user_id: katie.id, name: "Allie")

dan = Person.create(user_id: katie.id, name: "Dan")

kevin = Person.create(user_id: katie.id, name: "Kevin")

julia = Person.create(user_id: katie.id, name: "Julia")


stroller = Gift.create(user_id: katie.id, name: "stroller")

blanket = Gift.create(user_id: katie.id, name: "blanket")

toy = Gift.create(user_id: katie.id, name: "toy")

baby_shower = Event.create(user_id: katie.id, title: "Allie's baby shower", occasion: "Baby Shower", date: '6-22-2019')

dad_birthday = Event.create(user_id: katie.id, title: "Dad's Birthday", occasion: "Birthday", date: '5-25-2019')

whit_wedding = Event.create(user_id: katie.id, title: "Whitney's Wedding", occasion: "Wedding", date: '5-18-2019')

mothers_day = Event.create(user_id: katie.id, title: "Mother's Day", occasion: "Mother's Day", date: '5-12-2019')

kevins_birthday = Event.create(user_id: katie.id, title: "Kevin's Birthday", occasion: "Birthday", date: '07-07-2019')

person_gift_idea1 = PersonGiftIdea.create(person_id: allie.id, gift_idea_id: stroller.id)

event_gift_idea1 = EventGiftIdea.create(event_id: baby_shower.id, gift_idea_id: blanket.id)

person_gift_event1 = PersonGiftEvent.create(person_id: allie.id, event_id: baby_shower.id, gift_id: toy.id)

puts "end seed file"
