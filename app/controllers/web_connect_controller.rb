class WebConnectController < ApplicationController
  def create
    file = audio_params[:audio]
    if file.present?
      ActionCable.server.broadcast "default-freq", file: Base64.encode64(file.read )
      render json: { message: "Audio Streamed" }, status: 200
    else
      render json: { message: " File not found "}, status: 401
    end
  end

  private 

  def audio_params
    params.permit(:audio)
  end
end
