class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(permit_params)
    @message.save
    redirect_to root_path
  end

  private
  def permit_params
    params.require(:message).permit(:email, :content)
  end
end