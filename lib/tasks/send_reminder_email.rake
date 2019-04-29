namespace :send_reminder_email do
   desc 'Sends an email to user with an event within 14 days without a gift'
   task weeks: :environment do
      User.all.each do |user|
        puts "start emails"

        # for each user, check if they selected email reminders
        # 0 is no emails
        if user.email_reminder != 0
           events = {}

           # check to see if there are any events with a person missing a gift and if today's date + 7 (one week) or today's date + 14 (two weeks) is equal to the event date
           # if there are cases, consolidate by event (for events with multiple people missing gifts)
           user.person_gift_events.each do |pge|
             if pge.gift_id == nil && Date.today + user.email_reminder == pge.event.date
               if !events[pge.event.title]
                 events[pge.event.title] = {event: pge.event, date: pge.event.date, people: [pge.person.name]}
               else
                 events[pge.event.title][:people] << pge.person.name
              end
             end
           end

           # send an email for each event with at least one person missing a gift
           events.each_value do |event|
             UserMailer.with(user: user, event: event[:event], people: event[:people], days: user.email_reminder).reminder_email.deliver
           end
        end
        puts "end emails"
      end
   end
end
