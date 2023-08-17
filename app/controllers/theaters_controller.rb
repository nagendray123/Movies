class TheatersController < ApplicationController

	# before_action :authenticate_user!
    # load_and_authorize_resource
    
	def index
	  @theaters = if params[:search]
      @theaters = Theater.where("theater_name LIKE ?", "%#{params[:search]}%")
    else
      Theater.all
    end
	end

	def show
		@theater = Theater.find(params[:id])

		# redirect_to new_booking_path(movie_id: params[:movie_id], theater_id: @theater.id)
	end

	def new
		@theater = Theater.new
		# @movie_id = params[:movie_id]
		# @theater = Theater.new(user_id: params[:current_user])
	end

	def create
		@theater = Theater.new(theater_params)

		if @theater.save
			redirect_to @theater
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@theater = Theater.find(params[:id])
	end

	def update
		@theater = Theater.find(params[:id])

		if @theater.update(theater_params)
			redirect_to @theater
		else
			render :edit, status: :unprocessable_entity
		end
	end

    def destroy
    	@theater = Theater.find(params[:id])

    	if @theater.destroy
    	  redirect_to @theater, status: :see_other
        else
        	render status: :unprocessable_entity
        end
    end
  

	private
	def theater_params
		params.require(:theater).permit(:theater_name, :location, :capacity)
	end
end
