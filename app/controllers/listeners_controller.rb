class ListenersController < ApplicationController
  def create
    @listener = Listener.create()
    @listener.user = current_user
    @listener.company_id = params[:listener][:company_id]
    @listener.trigger = params[:listener][:trigger]
    @listener.save
    redirect_to users_path
  end

  def edit
    @listener = Listener.find(params[:id])
  end

  def update
    redirect_to current_user
  end
end
