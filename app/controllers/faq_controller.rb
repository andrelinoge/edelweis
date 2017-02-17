class FaqController < ApplicationController
  def index
    @items = Faq.includes(:faq_category).all
  end
end
