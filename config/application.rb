require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JobBoard
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.secret_key = '4878c241d5309b298bb70e2daf94bcc78239a643a3a4bb5fef1a87f151538574481d25980488bb502f7ea6bb078f36611876bc7c734b0affbffcf976ef07a713'
    config.application_name = 'Job Board'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.assets.initialize_on_precompile = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
