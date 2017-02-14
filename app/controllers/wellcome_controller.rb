class WellcomeController < ApplicationController
  def index
    @about = InfoBlock[:about]
  end
end
