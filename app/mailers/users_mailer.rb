class UsersMailer < ActionMailer::Base
 def send_mail(email)
  mail(:to => 'auchoudhari@gmail.com', :subject => "Welcome") do |format|
    format.html
   end
 end
end

