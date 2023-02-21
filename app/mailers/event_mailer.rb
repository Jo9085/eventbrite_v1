class EventMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def event_send(attendance)
      @attendance = attendance
  
      mail(to: @attendance.user.email, subject: 'Merci pour votre inscription !') 
    end
end
