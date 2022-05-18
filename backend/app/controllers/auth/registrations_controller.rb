class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
    protect_from_forgery
    private
  
    def sign_up_params
      # サインアップ時に登録できるカラムを指定
      params.permit(:email, :password, :password_confirmation)
    end
end