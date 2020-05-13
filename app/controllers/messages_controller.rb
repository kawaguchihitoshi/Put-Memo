class MessagesController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    # @search = Message.ransack(params[:q])
    # @products = @search.result
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    render action: :index
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def message_params
    params.require(:message).permit(:title,:text, :image).merge(user_id: current_user.id)
  end
end
