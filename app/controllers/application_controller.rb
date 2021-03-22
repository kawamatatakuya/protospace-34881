class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :position, :occupation])
    end
  end

# emailとpassword以外の値も保存できるように追記する（PicTweetなども参考にする