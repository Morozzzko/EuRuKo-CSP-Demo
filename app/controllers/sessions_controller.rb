class SessionsController < ApplicationController
  def destroy
    request.env["warden"].logout
    flash[:notice] = "You have been logged out."

    redirect_to attacks_path
  end

  def create
    user_info = request.env["omniauth.auth"]

    uid = user_info["uid"]
    nickname = user_info["info"]["nickname"]
    image_url = user_info["info"]["image"]
    profile_url = user_info["info"]["urls"]["GitHub"]

    request.env["warden"].set_user({ uid:, nickname:, image_url:, profile_url: })
    flash[:notice] = "You have been logged in as #{nickname}"

    redirect_to attacks_path
  end
end
