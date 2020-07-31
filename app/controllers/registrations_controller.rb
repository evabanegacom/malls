class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end

  def acount_update_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end   
end