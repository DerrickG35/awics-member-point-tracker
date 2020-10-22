# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

ENV['GOOGLE_OAUTH_CLIENT_ID'] = '447053054136-ncnklpl2438hapmd97rg9dojt9hmcoas.apps.googleusercontent.com'
ENV['GOOGLE_OAUTH_CLIENT_SECRET'] = 'lGpyiH61bTysJfxLr8CkKbQa'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AwicsMpt
  # main application class for ruby on rails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.assets.paths << Rails.root.join('/app/assets/fonts')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
