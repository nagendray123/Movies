class MoviesController < ApplicationController
  
  # before_action :authenticate_user!
  # load_and_authorize_resource
  
  def index
   @movies = if params[:search]
      @movies = Movie.where("movie_name LIKE ?", "%#{params[:search]}%")
    else
      Movie.all
    end
      @movies = @movies.page(params[:page]).per(9)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new(params[:id])
    # @movie = current_user.movies.new(user_id: params[:current_user])
  end

  def create
    # debugger
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit   
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    if @movie.destroy
    redirect_to @movie, status: :see_other
    else
      render status: :unprocessable_entity
    end  
  end

  private
  def movie_params
    params.require(:movie).permit(:movie_name, :movie_language, :movie_hours, :movie_type, :movie_release_date, :image)
  end
end
