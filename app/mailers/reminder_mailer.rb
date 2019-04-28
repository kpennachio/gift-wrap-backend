# class ReminderMailer < ApplicationMailer
#   default from: "giftwrap.planner@gmail.com"
#
#   def reminder_email
#     @user = params[:user]
#     @event = params[:event]
#     @url  = `http://example.com/checklist/#{@event.id}`
#     mail(to: @user.email, subject: 'You have an event in two weeks!')
#   end
# end
