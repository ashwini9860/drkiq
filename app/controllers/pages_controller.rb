class PagesController < ApplicationController
   def show
    render template: "pages/#{params[:page]}"
   end

  def test_mail
   email = params[:email]
   UsersMailer.send_mail(email).deliver_now  
  end
end 
