class MainController < ApplicationController
	def index

  end
  def upload

  end
  def upload_process

    picture  = Picture.new
    picture.file = params[:picture]
    picture.save

    content = Content.new
    content.text = params[:content]
    content.picture_id = picture.id
    content.save

    redirect_to :action => "upload"

  end
end
