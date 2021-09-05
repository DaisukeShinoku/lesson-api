class Api::V1::Auth::SessionsController < ApplicationController
  def index
    if curren_api_v1_user
      render json: { status: 200, current_user: curren_api_v1_user }
    else
      render json: { status: 500, message: "ユーザーが存在しません" }
    end
  end
end
