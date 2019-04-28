class UserMailer < ApplicationMailer
  default from: "giftwrap.planner@gmail.com"

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3001'
    mail(to: @user.email, subject: 'Welcome to Gift Wrap!')
  end

  def reminder_email
    @user = params[:user]
    @event = params[:event]
    @people = params[:people]
    @url  = "http://localhost:3001/checklist/#{@event.id}"
    mail(to: @user.email, subject: "#{@event.title} is in two weeks!")
  end

end
