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

katie = User.create(username: "katie", password: "123", first_name: "Katie", last_name: "Pennachio", email: "katie.pennachio@gmail.com")

budget = Budget.create(user_id: katie.id, year: 2019, budget: 100)

allie = Person.create(user_id: katie.id, name: "Allie", notes: "")

dan = Person.create(user_id: katie.id, name: "Dan", notes: "")

dad = Person.create(user_id: katie.id, name: "Dad", notes: "")

mom = Person.create(user_id: katie.id, name: "Mom", notes: "")

aunt_gertrude = Person.create(user_id: katie.id, name: "Aunt Gertrude", notes: "")

susie = Person.create(user_id: katie.id, name: "Susie", notes: "")

kevin = Person.create(user_id: katie.id, name: "Kevin", notes: "")

julia = Person.create(user_id: katie.id, name: "Julia", notes: "")



# t.bigint "user_id"
# t.string "name"
# t.string "notes"
# t.string "image"
# t.decimal "list_price", precision: 12, scale: 2
# t.string "store"
# t.string "link"
# t.string "age_range"

###### GIFTS #######


Gift.create(
  user_id: katie.id,
  name: "New York Times Custom Front Page Puzzle",
  list_price: 49.95,
  store: "UncommonGoods",
  link: "https://www.uncommongoods.com/product/new-york-times-custom-front-page-puzzle",
  image: "https://www.uncommongoods.com/images/items/42300/42300_1_640px.jpg",
  notes: "",
  age_range: "All Ages"
)

Gift.create(
  user_id: katie.id,
  name: "Chair Cube - Yellow",
  list_price: 59.93,
  store: "Amazon",
  link: "https://www.amazon.com/gp/product/B000VYBRDE?pf_rd_p=1cac67ce-697a-47be-b2f5-9ae91aab54f2&pf_rd_r=8E34GF0NSG3FRAED7AHR",
  image: "https://images-na.ssl-images-amazon.com/images/I/51z55PQQ6iL._SL1000_.jpg",
  notes: "",
  age_range: "Babies"
)

Gift.create(
  user_id: katie.id,
  name: "Capri Blue Matte Jar Candle",
  list_price: 30.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/capri-blue-matte-jar-candle-e?category=all-gifts&color=010",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/E19851559_010_b10?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Leah Goren Marcella Vase",
  list_price: 24.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/leah-goren-marcella-vase?category=all-gifts&color=066",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/49715568_066_b10?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Suite One Studio Mimira Mug",
  list_price: 14.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/suite-one-studio-mimira-mug?category=all-gifts&color=102",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/D40363608_102_b10?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

necklace = Gift.create(
  user_id: katie.id,
  name: "Delicate Monogram Necklace",
  list_price: 38.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/delicate-monogram-necklace?category=all-gifts&color=901",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/42697011_901_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Tocca Mini Eau De Parfum",
  list_price: 24.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/tocca-mini-eau-de-parfum3?category=all-gifts&color=072",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/37397353_072_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "All Ages"
)

Gift.create(
  user_id: katie.id,
  name: "Lucy the Llama Stuffed Animal",
  list_price: 24.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/lucy-the-llama-stuffed-animal?category=home-gifts&color=010",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/49781396_010_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Kids"
)

Gift.create(
  user_id: katie.id,
  name: "Wooden Espresso Machine Toy Set",
  list_price: 40.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/wooden-espresso-machine-toy-set?category=gifts-for-kids&color=000",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/47716063_000_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Kids"
)

Gift.create(
  user_id: katie.id,
  name: "Williams Sonoma Copper Bar Tools Set",
  list_price: 79.95,
  store: "Williams Sonoma",
  link: "https://www.williams-sonoma.com/products/williams-sonoma-copper-bar-tools-set/?pkey=cgifts-under-100-dollars&isx=0.0.9917",
  image: "https://www.williams-sonoma.com/wsimgs/ab/images/dp/wcm/201849/0568/img37j.jpg",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Williams Sonoma Double-Wall Glass French Press",
  list_price: 54.95,
  store: "Williams Sonoma",
  link: "https://www.williams-sonoma.com/products/williams-sonoma-double-wall-glass-french-press/?pkey=cspecialty-coffee-maker&isx=0.0.534",
  image: "https://www.williams-sonoma.com/wsimgs/ab/images/dp/wcm/201849/0562/img71j.jpg",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "PARIS TEA, CLASSIC TIN OF 20 SACHETS",
  list_price: 8.50,
  store: "Harney & Sons",
  link: "https://www.harney.com/products/copy-of-paris-classic-tin-of-20-sachets?variant=13482393927751",
  image: "https://cdn.shopify.com/s/files/1/1234/1342/products/S7A0082_dba76026-61c5-46fa-bf32-3c2b578e261d_2000x.jpg?v=1541182920",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Organic Cotton Dot Shorty One-Piece",
  list_price: 29.95,
  store: "Baby Gap",
  link: "https://www.gap.com/browse/product.do?pid=441174002&cid=1100435&pcid=1027203",
  image: "https://www.gap.com/webcontent/0016/350/693/cn16350693.jpg",
  notes: "",
  age_range: "Babies"
)

Gift.create(
  user_id: katie.id,
  name: "Flamingo Espadrille Sneakers",
  list_price: 24.95,
  store: "Baby Gap",
  link: "https://www.gap.com/browse/product.do?pid=444024002&cid=50704&pcid=7206",
  image: "https://www.gap.com/webcontent/0016/557/149/cn16557149.jpg",
  notes: "",
  age_range: "Babies"
)

baby_gym = Gift.create(
  user_id: katie.id,
  name: "SKIP*HOP® Up For Adventure Activity Gym",
  list_price: 84.99,
  store: "Buy Buy Baby",
  link: "https://www.buybuybaby.com/store/product/skip-hop-reg-up-for-adventure-activity-gym/1060110053?categoryId=30527",
  image: "https://b3h2.scene7.com/is/image/BedBathandBeyond/110031760110053p?$imagePLP$&wid=520&hei=520",
  notes: "",
  age_range: "Babies"
)

Gift.create(
  user_id: katie.id,
  name: "Brushed Antique Bronze 11x14 Frame",
  list_price: 49.95,
  store: "Crate and Barrel",
  link: "https://www.crateandbarrel.com/brushed-antique-bronze-11x14-frame/s683001",
  image: "https://images.crateandbarrel.com/is/image/Crate/BrshedAntiqBrnzFrame11x14F16/?$web_product_hero$&160623111019&wid=625&hei=625",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Wood Marble Cheese Slicer",
  list_price: 39.95,
  store: "Crate and Barrel",
  link: "https://www.crateandbarrel.com/wood-marble-cheese-slicer/s266058",
  image: "https://images.crateandbarrel.com/is/image/Crate/WoodMarbleChseSlicerSHS17/?$web_product_hero$&161222141244&wid=625&hei=625",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Black-Handled 4-Piece Barbecue Tool Set",
  list_price: 49.95,
  store: "Crate and Barrel",
  link: "https://www.crateandbarrel.com/black-handled-4-piece-barbecue-tool-set/s261973",
  image: "https://images.crateandbarrel.com/is/image/Crate/BlackHandled4PcBBQToolSetAVSHF16/?$web_product_hero$&160928145301&wid=625&hei=625",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Brass Wine Rack",
  list_price: 58.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/brass-wine-rack?category=home-gifts&color=070",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/44222123_070_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

Gift.create(
  user_id: katie.id,
  name: "Edna Embellished Throw Blanket",
  list_price: 128.00,
  store: "Anthropologie",
  link: "https://www.anthropologie.com/shop/edna-embellished-throw-blanket?category=home-gifts&color=018",
  image: "https://s7d5.scene7.com/is/image/Anthropologie/44314482_018_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain",
  notes: "",
  age_range: "Adults"
)

# Gift.create(
#   user_id: katie.id,
#   name: "",
#   list_price: 69.99,
#   store: "",
#   link: "",
#   image: ""
# )
#
# Gift.create(
#   user_id: katie.id,
#   name: "",
#   list_price: 69.99,
#   store: "",
#   link: "",
#   image: ""
# )


###### EVENTS ######

baby_shower = Event.create(user_id: katie.id, title: "Allie's baby shower", occasion: "Baby Shower", date: Date::strptime('06-22-2019',"%m-%d-%Y"), notes: "")

susie_birthday = Event.create(user_id: katie.id, title: "Susie's Birthday", occasion: "Birthday", date: Date::strptime('05-25-2019',"%m-%d-%Y"), notes: "")

fathers_day = Event.create(user_id: katie.id, title: "Father's Day", date: Date::strptime("06-16-2019","%m-%d-%Y"))

susie_wedding = Event.create(user_id: katie.id, title: "Susie's Wedding", occasion: "Wedding", date: Date::strptime('06-29-2019',"%m-%d-%Y"), notes: "")

mothers_day = Event.create(user_id: katie.id, title: "Mother's Day", occasion: "Mother's Day", date: Date::strptime('05-12-2019',"%m-%d-%Y"), notes: "")

kevins_birthday = Event.create(user_id: katie.id, title: "Kevin's Birthday", occasion: "Birthday", date: Date::strptime('05-12-2019',"%m-%d-%Y"), notes: "")

person_gift_idea1 = PersonGiftIdea.create(person_id: allie.id, gift_idea_id: necklace.id)

event_gift_idea1 = EventGiftIdea.create(event_id: baby_shower.id, gift_idea_id: baby_gym.id)

person_gift_event1 = PersonGiftEvent.create(person_id: allie.id, event_id: baby_shower.id, price_max: 0, gift_actual_cost: 0)

person_gift_event2 = PersonGiftEvent.create(person_id: susie.id, event_id: susie_birthday.id, price_max: 0, gift_actual_cost: 0)

person_gift_event3 = PersonGiftEvent.create(person_id: kevin.id, event_id: kevins_birthday.id, price_max: 0, gift_actual_cost: 0)

person_gift_event4 = PersonGiftEvent.create(person_id: mom.id, event_id: mothers_day.id, price_max: 50, gift_actual_cost: 0)

person_gift_event4 = PersonGiftEvent.create(person_id: aunt_gertrude.id, event_id: mothers_day.id, price_max: 50, gift_actual_cost: 0)

person_gift_event4 = PersonGiftEvent.create(person_id: dad.id, event_id: fathers_day.id, price_max: 0, gift_actual_cost: 0)

person_gift_event5 = PersonGiftEvent.create(person_id: susie.id, event_id: susie_wedding.id, price_max: 0, gift_actual_cost: 0)


puts "end seed file"
