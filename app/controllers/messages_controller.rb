require 'pry'

class MessagesController < ApplicationController

    def create
        message_params = params.require(:message).permit(:name, :email, :body)
        @message = Message.new(message_params)
        if @message.valid?
            MessageMailer.contact_me(@message).deliver_now
            render json: { message: "Submitted!" }, status: 204
        else
            render json: { message: "Invalid Message" }, status: 400
        end


    end

end
