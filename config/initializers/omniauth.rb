OmniAuth.config.logger = Rails.logger
  HOST= 'localhost:3000'
  URL = "http://#{HOST}/auth/facebook/callback"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
end