class ImagesController < ApplicationController

  def create
    @image = Image.create( image_params )
    @image.save

    redirect_to root_path
  end



  private

    def image_params
      params.require(:image).permit(:file)
    end
end
