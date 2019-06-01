class ImageFilesController < ApplicationController
  def create
    image_file = ImageFile.new(image: params[:image], name: params[:name])

    if image_file.save
      render json: {
        result: 'ok'
      }
    else
      render json: {
        result: 'ng'
      }
    end

  end

  def show
    id = params[:id]
    image_file = ImageFile.find(id)

    render json: {
      result: 'ok',
      id: id,
      name: image_file.name,
      image: image_file.image,
    }
  end
end
