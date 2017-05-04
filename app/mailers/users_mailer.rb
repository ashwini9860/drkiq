class UsersMailer < ActionMailer::Base
 def send_mail(email)
  mail(:to => email, :subject => "Welcome") do |format|
    format.html
   end
 end
end

