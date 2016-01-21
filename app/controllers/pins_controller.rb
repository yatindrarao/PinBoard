class PinsController < ApplicationController

	before_action :find_pin,only:[:edit,:update,:show,:destroy]
	
	def index
		@pins = Pin.all.order("created_at DESC")
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pin_params)

		if @pin.save
			redirect_to @pin, notice: "Pin successfully created"
		else
			render 'new'	
		end	
	end

	def edit

	end

	def update
		if @pin.update(pin_params)
			redirect_to @pin, notice: "Pin is successfully updated"
		else
			render 'edit'
		end
				
	end

	def show

	end

	def destroy
		@pin.destroy
		redirect_to root_path
	end

	private

		def pin_params
			params.require(:pin).permit(:title,:description)
		end
		
		def find_pin
			@pin = Pin.find(params[:id])
		end
		
end
