class Contact < ActionMailer::Base

  default :from => "web@canadavendingservices.com"
  default :to => "stephmills24@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "New Vending Machine Request: #{message.subject}")
  end
end
