# app/controllers/users_controller.rb

class UsersController < ApplicationController
  before_filter :authenticate_user!, except: :index

  def update
    if current_user.update_attributes(params[:user])
      flash[:notice] = "User information updated"
      redirect_to edit_user_registration_path(current_user)
    else
      render "devise/registrations/edit"
    end
  end
end
#def user_params
#  params.require(:user).permit(:name, :avatar)
#end