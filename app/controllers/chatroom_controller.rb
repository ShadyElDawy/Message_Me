class ChatroomController < ApplicationController

	before_action :require_user 

	def index
		@message = Message.new #to be used in index page to create a new message each time
		@messages = Message.all #inistance to grab all messages to use in the index view page

	end

end
