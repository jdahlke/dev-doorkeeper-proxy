stage = ENV['STAGE'] || Rails.env
settings = Rails.application.config_for(:settings, env: stage)
secrets = Rails.application.config_for(:secrets, env: stage)

Doorkeeper.configure do |config|
  config.login_site = settings['doorkeeper']['login_site']
  config.site = settings['doorkeeper']['site']

  config.client_app_name = secrets['doorkeeper']['HMAC_ACCESS_ID']
  config.access_id = secrets['doorkeeper']['HMAC_ACCESS_ID']
  config.secret_key = secrets['doorkeeper']['HMAC_SECRET_KEY']

  config.cache = Rails.cache
end
