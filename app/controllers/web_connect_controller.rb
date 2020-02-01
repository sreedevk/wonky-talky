class WebConnectController < ApplicationController
  def create
    file = audio_params[:audio]
    ActionCable.server.broadcast "channel-1", message: file.read
  end

  private 

  def audio_params
    params.permit(:audio)
  end
end
