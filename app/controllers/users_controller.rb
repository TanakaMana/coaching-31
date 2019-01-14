class UsersController < ApplicationController
  def show
    if params[:id] == "sign_out"
      redirect_to :root
    else
      @user = User.find(params[:id])
    end
  end
end
