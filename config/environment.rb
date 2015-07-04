# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gmailer::Application.initialize!

# Defaults to:
# config.action_mailer.sendmail_settings = {
#   :location => '/usr/sbin/sendmail',
#   :arguments => '-i -t'
# }
