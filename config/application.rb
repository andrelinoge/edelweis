require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Edelweis
  class Application < Rails::Application
    I18n.available_locales = [:en, :ru]

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
