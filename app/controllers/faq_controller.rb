class FaqController < ApplicationController
  def index
    @categories = FaqCategory.includes(:faqs).ordered.all
  end
end
