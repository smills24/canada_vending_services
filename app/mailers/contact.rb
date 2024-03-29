class Contact < ActionMailer::Base

  default :from => "web@canadavendingservices.com"
  default :to => "info@canadavendingservices.com"

  def new_message(message)
    @email = message
    mail(:subject => "New Vending Machine Request: #{message.subject}")
  end
end
