class PersonGiftEvent < ApplicationRecord
  belongs_to :gift, optional: true
  belongs_to :person
  belongs_to :event
end
