class PicturesController < ApplicationController
	def index
		 @pictures = Picture.all
  end

  def show
  	@picture = Picture.find(params[:id])
	end

	def new
		@picture = Picture.new
	end

	def create
    @picture = Picture.create(picture_params)
    if @picture.save
      redirect_to pictures_url
    else
      render :new
    end
		# # Make the variable @picture a new picture with the given params
  #   @picture = Picture.new(params[:picture])
  #   if @picture.save
  #     # if the save for the picture was successful, go to index.html.erb
  #     redirect_to pictures_url
  #   else
  #     # otherwise render the view associated with the action :new (i.e. new.html.erb)
  #     render :new
  #   end
	end

  private
  
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end