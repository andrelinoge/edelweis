class PagesController < ApplicationController
  def faq
    @items = Faq.includes(:faq_category).all
  end

  def about
    @page_parts = AboutPage.all
  end
end
