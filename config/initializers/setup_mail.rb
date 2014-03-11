# config/initializers/setup_mail.rb

if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '587',
    authentication: :plain,
    user_name:      "app22854083@heroku.com",
    password:       "dw59gdim",
    domain:         'heroku.com',
    enable_starttls_auto: true
  }
end