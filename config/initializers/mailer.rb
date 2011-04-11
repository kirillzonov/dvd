ActionMailer::Base.default_url_options[:host] = configatron.host
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.gmail.com',
    :port           => 587,
    :authentication => :plain,
    :user_name      => 'rails.fs.test@gmail.com',
    :password       => 'rails3base'
  }

