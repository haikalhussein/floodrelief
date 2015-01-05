class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.create(user_params)
  end
    
  private
  def user_params
    params.require(:user).permit!
  end
end