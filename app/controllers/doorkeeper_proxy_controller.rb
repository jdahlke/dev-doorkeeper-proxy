class DoorkeeperProxyController < ApplicationController
  def service_token
    user_id = ENV['BIMA_USER_ID'] || 'nick_system'
    token = Doorkeeper::Token.create_service_token(user_id: user_id)

    render json: token
  end
end


