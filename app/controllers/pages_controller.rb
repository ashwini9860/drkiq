class PagesController < ApplicationController
   def show
    render template: "pages/#{params[:page]}"
   end
  def home
     @count = CounterJob.perform_now
     @count1 = CountWorker.perform_async 
  end
  def test_mail
#   @count = CounterJob.perform_now
  email = params[:email]
   UsersMailer.send_mail(email).deliver_later(wait: 2.minutes)
   redirect_to root_path
 end
end 
