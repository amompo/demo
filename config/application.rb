require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'active_model'
# require "rails/test_unit/railtie"

# Assets should be precompiled for production (so we don't need the gems loaded then)
# Bundler.require(*Rails.groups(assets: %w(development test)))
Bundler.require(:default, :assets, Rails.env)

module Danrent
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # config.railties_order = [RentProperty, RentAccount, :main_app, :all]

    console do
      require "pry"
      config.console = Pry
    end    
  end
end

