class MessagesController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    # @search = Message.ransack(params[:q])
    # @products = @search.result
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
