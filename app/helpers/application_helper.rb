module ApplicationHelper
  def locales_except_current
    I18n.available_locales.reject { |l| l == I18n.locale }
  end
end
