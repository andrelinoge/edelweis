require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Edelweis
  class Application < Rails::Application
    I18n.available_locales = [:en, :ru]

    Rails.application.configure do
      config.generators do |g|
        g.test_framework  false
        g.jbuilder        false
      end
    end 
  end
end
