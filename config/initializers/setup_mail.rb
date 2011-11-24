ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "stephmills24@gmail.com",
  :password             => "kaninchen24",
  :authentication       => :plain,
  :enable_starttls_auto => true
}

