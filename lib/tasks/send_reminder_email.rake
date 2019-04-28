namespace :send_reminder_email do
   desc 'Sends an email to user with an event within 14 days without a gift'
   task two_weeks: :environment do
      User.all.each do |user|
        puts user.first_name
        event = Event.first
        UserMailer.with(user: user, event: event).reminder_email.deliver
         #
         # if agent_card.real_estate_license_expires_at == Date.today + 2.months
         #    LicenseExpireMailer.license_expire_agent(@agent_card, @agent).deliver_later
         # end
      end
   end
end
