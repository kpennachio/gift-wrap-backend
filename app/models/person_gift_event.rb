class PersonGiftEvent < ApplicationRecord
  belongs_to :gift, optional: true
  belongs_to :person, optional: true
  belongs_to :event
end
