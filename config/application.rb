require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Edelweis
  class Application < Rails::Application
    config.time_zone = 'Europe/Minsk'
    
    I18n.available_locales     = [:en, :ru, :pt, :it, :de]
    config.i18n.default_locale = :ru
    config.i18n.fallbacks      = [:en]

    Rails.application.configure do
      config.generators do |g|
        g.test_framework  false
        g.jbuilder        false
        g.helper          false
        g.assets          false
      end
    end 
  end
end
