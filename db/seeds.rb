# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

katie = User.create(username: "katie")

budget = Budget.create(user_id: katie.id, year: 2019, budget: 100)

allie = Person.create(user_id: katie.id, name: "Allie")

stroller = Gift.create(user_id: katie.id, name: "stroller")

blanket = Gift.create(user_id: katie.id, name: "blanket")

toy = Gift.create(user_id: katie.id, name: "toy")

baby_shower = Event.create(user_id: katie.id, title: "Allie's baby shower")



person_gift_idea1 = PersonGiftIdea.create(person_id: allie.id, gift_idea_id: stroller.id)

event_gift_idea1 = EventGiftIdea.create(event_id: baby_shower.id, gift_idea_id: blanket.id)

person_gift_event1 = PersonGiftEvent.create(person_id: allie.id, event_id: baby_shower.id, gift_id: toy.id)
