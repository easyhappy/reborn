class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(permit_params)
    @message.save
    redirect_to messages_path
  end

  private
  def permit_params
    params.require(:message).permit(:email, :content)
  end
end