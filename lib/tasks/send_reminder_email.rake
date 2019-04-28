namespace :send_reminder_email do
   desc 'Sends an email to user with an event within 14 days without a gift'
   task two_weeks: :environment do
      User.all.each do |user|
        puts "start emails"

         events = {}
         
         user.person_gift_events.each do |pge|
           if pge.gift_id == nil && Date.today + 14 == pge.event.date
             if !events[pge.event.title]
               events[pge.event.title] = {event: pge.event, date: pge.event.date, people: [pge.person.name]}
             else
               events[pge.event.title][:people] << pge.person.name
            end
           end
         end

         events.each_value do |event|
           UserMailer.with(user: user, event: event[:event], people: event[:people]).reminder_email.deliver
         end

        puts "end emails"
      end
   end
end
