class MessagesController < ApplicationController
    def create 
        @message = Message.create(message_params)
        if @message.valid?
            SendMessage.mail(@message).deliver
            redirect_to root_path
          else
            redirect_to root_path(anchor: 'contact')
        end
    end
    
    private
    def message_params
      params.require(:message).permit(:name, :email, :message, :created_at)
    end
    
end
