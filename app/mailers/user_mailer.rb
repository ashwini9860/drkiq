class UserMailer < ActionMailer::Base
 def send_mail(email)
  mail(:to => email, :subject => "Welcome") do |format|
    format.text
    format.html  
   end  
 end
end
