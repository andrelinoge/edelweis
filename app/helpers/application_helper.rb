module ApplicationHelper
  def locales_except_current
    I18n.available_locales.reject { |l| l == I18n.locale }
  end

  def active_menu?(*args)
    args.any? { |c| c.to_s.eql?(controller_name) } ? 'active' : nil
  end
end
