class MainController < ApplicationController


  def makequiz

  end

  def random

    @picture = Picture.all.sample
  
    @ai = Picture.all
    
    @array = @ai.shuffle[0..4]

     @array << @picture

  end

	def index

  end
  def upload

  end
  def delete

    Picture.find(params[:id]).delete
    redirect_to :action => "upload"

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
