class PersonGiftEvent < ApplicationRecord
  belongs_to :gift
  belongs_to :person
  belongs_to :event
end
