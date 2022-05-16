# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MAILJET_API_KEY'],
  :password => ENV['MAILJET_SECRET_KEY'],
  :domain => 'thpevent.com',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# ActionMailer::Base.smtp_settings =   {
#   :address            => 'mail.yahoo.com',
#   :port               => 587,
#   :domain             => 'hatemgribi@yahoo.fr', #you can also use google.com
#   :authentication     => :plain,
#   :user_name          => ENV['YAHOO_LOGIN'],
#   :password           => ENV['YAHOO_PWD']
# }