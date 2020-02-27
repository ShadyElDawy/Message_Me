class ChatroomController < ApplicationController

	def index
		@messages = Message.all #inistance to grab all messages to use in the index view page

	end

end
