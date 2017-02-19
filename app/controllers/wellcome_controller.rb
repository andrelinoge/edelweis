class WellcomeController < ApplicationController
  def index
    @about_block             = InfoBlock[:about]
    @sales_block             = InfoBlock[:sales]
    @wind_technologies_block = InfoBlock[:wind_technologies]
    @sun_technologies_block  = InfoBlock[:sun_technologies]
    @investment_block        = InfoBlock[:investment]
  end
end
