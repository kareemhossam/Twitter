class RegistrationController < Devise::RegistrationController

  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password, :password_confirmation, :gender, :marital_status, :phone_number, :home_town)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password, :password_confirmation, :current_password, :gender, :marital_status, :phone_number, :home_town)
  end

end