class AboutController < ApplicationController
  def index
    @page_parts = AboutPage.all
  end
end
