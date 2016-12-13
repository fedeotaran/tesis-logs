require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fluentdapp
  class Application < Rails::Application
    # Necesario para permitir ver consola a esta IP.
    config.web_console.whiny_requests = false

    config.logger = ActiveSupport::Logger.new(STDOUT)
    config.log_formatter = nil
    config.log_level = :info
    config.lograge.enabled = true
    config.lograge.formatter = Lograge::Formatters::Json.new

    config.active_record.raise_in_transactional_callbacks = true
  end
end
