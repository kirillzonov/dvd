# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DVD::Application.initialize!
DVD::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.gmail.com',
    :port           => 587,
    :authentication => :plain,
    :user_name      => 'rails.fs.test@gmail.com',
    :password       => 'rails3base'
  }
end

