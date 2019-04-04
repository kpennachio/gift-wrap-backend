class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :events, :people

  def events
    self.object.events.map do |event|
        date = Date.strptime(event.date, "%m-%d-%Y")
      {
        id: event.id,
        title: event.title,
        occasion: event.occasion,
        date: event.date,
        dateFormatted: date.strftime("%A, %B %-d, %Y"),
        month: date.month,
        year: date.year,
        notes: event.notes,
        registryLink: event.registry_link
      }
    end
  end

  def people
    self.object.people.map do |person|
      {
        id: person.id,
        name: person.name,
        notes: person.notes
      }
    end
  end

end
