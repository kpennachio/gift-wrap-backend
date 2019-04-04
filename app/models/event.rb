class Event < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :people, through: :person_gift_events
  has_many :gifts, through: :person_gift_events

  has_many :event_gift_ideas
  has_many :gift_ideas, through: :event_gift_ideas

end


# date info
# // ♥ irb
# 2.3.3 :001 > require 'date'
#  => true
# 2.3.3 :002 > testdate = '27-03-1988'
#  => "27-03-1988"
# 2.3.3 :003 > converted = Date::strptime(testdate, "%d-%m-%Y")
#  => #<Date: 1988-03-27 ((2447248j,0s,0n),+0s,2299161j)>
# 2.3.3 :004 > converted.mday
#  => 27
# 2.3.3 :005 > converted.month
#  => 3
# 2.3.3 :006 > converted.year
#  => 1988
