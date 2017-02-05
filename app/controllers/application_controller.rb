class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  protected

  def set_locale
    params[:locale] ||= I18n.default_locale

    if I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
    else
      params[:locale] = I18n.default_locale
    end
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge(options)
  end
end
