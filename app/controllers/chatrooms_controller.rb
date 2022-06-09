class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.create(name: Faker::Internet.password)

    redirect_to @chatroom
  end
end
