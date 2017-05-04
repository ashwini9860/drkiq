class UserMailer < ActionMailer::Base
default :from => 'chanakyadevraj@gmail.com'
 def send_mail(email)
  mail(:to => email, :subject => "Welcome", :from => "test@applica.com") do |format|
    format.html  
   end  
 end
end
