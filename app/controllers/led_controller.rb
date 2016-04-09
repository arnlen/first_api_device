class LedController < ApplicationController

  def on
    LED.on
    render json: { led: LED.value }, status: :ok
  end

  def off
    LED.off
    render json: { led: LED.value }, status: :ok
  end

end
