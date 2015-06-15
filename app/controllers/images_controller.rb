class ImagesController < ApplicationController

  def create
    @image = Image.create( image_params )

      if @image.save
        #render json: {message: "success"}, status: 200
        render json: { message: "success", fileID: @image.file.url}, :status => 200  
      else
        render json: { error: @image.errors.full_messages.join(',')}, status: 400
      end
  end



  private

    def image_params
      params.require(:image).permit(:file)
    end
end
