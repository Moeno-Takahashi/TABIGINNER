class LinebotController < ApplicationController
  require 'line/bot' 
  skip_before_action :require_login, only: [:client, :callback]

  protect_from_forgery :except => [:callback]

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  def callback
    body = request.body.read
  
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      head :bad_request
    end
  
    events = client.parse_events_from(body)
  
    events.each { |event|
      @@userId = event['source']['userId']
    }
    render :create
    head :ok
  end

  def create
    if current_user.create_line_user!(uid: @@userId, user_id: current_user.id)
      redirect_to step5_home_path, success: t('.success')
      @@userId = nil
    end
  end
end


