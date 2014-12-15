class CompaniesController < ApplicationController
  def index
  end

  def show
    @listener = Listener.new
  end
  
end
