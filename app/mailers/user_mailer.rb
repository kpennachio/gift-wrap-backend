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
    @time = ""

    if params[:days] == 7
      @time = "one week"
    elsif params[:days] == 14
      @time = "two weeks"
    end

    @url  = "http://localhost:3001/checklist/#{@event.id}"
    mail(to: @user.email, subject: "#{@event.title} is in #{@time}!")
  end

end
