class OnStartupController < ApplicationController

	def index
		@items=List.all
		#do something
	end

	def post
		@item = List.create(thing_to_do: params[:text])
		render layout: false
		#render: nothing, status: 200
	end

	def f
		@items = List.all
		render template: 'on_startup/index'
	end

	def delete
		params[:id]
		List.find(params[:id]).destroy
		render nothing: true, status: 200
	end

end
