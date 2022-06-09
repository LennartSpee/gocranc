class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        {
          userId: current_user.id,
          message: render_to_string(partial: "message", locals: { message: @message })
        }
      )
      head :ok
    else
      head :unprocessable_entity # 422
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
