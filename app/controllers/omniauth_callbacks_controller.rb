class OmniauthCallbacksController < Devise::OmniauthCallbacksController 

    def facebook 
        binding.pry
        @user = User.from_omniauth(request.env['omniauth.auth'])
        params = request.env["omniauth.params"]
        if @user.persisted?
          sign_in_and_redirect @user, event: :authentication
          set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
        else
          session['devise.facebook_data'] = resquest.env('omniauth.auth')
          redirect_to new_user_registration_path #maybe not
        end

    end

end