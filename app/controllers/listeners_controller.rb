class ListenersController < ApplicationController
  def create
    @listener = Listener.create()
    @listener.user = current_user
    @listener.company_id = params[:listener][:company_id]
    @listener.trigger = params[:listener][:trigger]
    @listener.save
    redirect_to :back
  end
end
