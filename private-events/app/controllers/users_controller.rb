class UsersController < ApplicationController
  def show
    @events = []
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      if @user
        @events = @user.created_events
      else
        redirect_to root
      end
    end
  end
end
