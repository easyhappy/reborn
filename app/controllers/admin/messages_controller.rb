class Admin::MessagesController < Admin::BaseController
  def index
    @messages = Message.all
  end
end