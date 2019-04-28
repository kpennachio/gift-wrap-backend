class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :email_reminder, :events, :people, :gifts, :budgets

  def events
    self.object.events.map do |event|
        # date = Date.strptime(event.date, "%m-%d-%Y")

        pge = event.person_gift_events.map do |pge|
          {id: pge.id, person: pge.person, gift: pge.gift, gift_actual_cost: pge.gift_actual_cost, price_min: pge.price_min, price_max: pge.price_max}
        end
      {
        id: event.id,
        title: event.title,
        occasion: event.occasion,
        date: event.date,
        dateFormatted: event.date.strftime("%A, %B %-d, %Y"),
        month: event.date.month,
        year: event.date.year,
        notes: event.notes,
        registryLink: event.registry_link,
        person_gift_events: pge,
        event_gift_ideas: event.event_gift_ideas,
        gift_ideas: event.gift_ideas
      }
    end
  end

  def people
    self.object.people.map do |person|
      pge = person.person_gift_events.map do |pge|
        {id: pge.id, event: pge.event, gift: pge.gift, gift_actual_cost: pge.gift_actual_cost, price_min: pge.price_min, price_max: pge.price_max}
      end
      {
        id: person.id,
        name: person.name,
        notes: person.notes,
        gifts: person.gifts,
        events: person.events,
        person_gift_events: pge,
        person_gift_ideas: person.person_gift_ideas,
        gift_ideas: person.gift_ideas
      }
    end
  end

  def gifts
    self.object.gifts.map do |gift|
      pge = gift.person_gift_events.map do |pge|
        {id: pge.id, person: pge.person, event: pge.event, gift_actual_cost: pge.gift_actual_cost, price_min: pge.price_min, price_max: pge.price_max}
      end
      {
        id: gift.id,
        name: gift.name,
        notes: gift.notes,
        image: gift.image,
        list_price: gift.list_price,
        store: gift.store,
        link: gift.link,
        age_range: gift.age_range,
        people: gift.people,
        events: gift.events,
        person_gift_events: pge,
        person_gift_ideas: gift.person_gift_ideas,
        event_gift_ideas: gift.event_gift_ideas,
        pending_events: gift.pending_events,
        pending_people: gift.pending_people
      }
    end
  end

end
