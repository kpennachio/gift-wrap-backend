class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :events

  def events
    self.object.events.map do |event|
      {
        id: event.id,
        title: event.title,
        occasion: event.occasion,
        date: event.date,
        notes: event.notes,
        registry_link: event.registry_link
      }
    end
  end
end
