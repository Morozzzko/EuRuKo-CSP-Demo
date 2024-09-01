class SessionsController < ApplicationController
  def new
    redirect_to '/auth/github'
  end

  def create
    user_info = request.env['omniauth.auth']

    uid = user_info['uid']
    nickname = user_info['info']['nickname']
    image = user_info['info']['image']
    profile_url = user_info['info']['urls']['GitHub']
  end
end
