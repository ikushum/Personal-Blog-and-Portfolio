class SendMessage < ApplicationMailer
   
    default to: "ikushum@gmail.com"
   
   def mail(message)
      @message=message
      mail from: message.email, subject: 'Message From Website'
   end       
    
end
