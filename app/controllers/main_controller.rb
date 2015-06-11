class MainController < ApplicationController


  def makequiz

  end

  def random

  
    @double = Array.new

    array1 = ["선사시대", "고구려", "백제", "그냥 신라", "통일 신라", "발해", "고려", "조선초기 회화", "조선 중기의 회화", "조선 후기의 회화", "조선 말기의 회화", "조선시대의 도자, 공예, 건축"]
    array2 = [1, 3, 11, 15, 20, 24, 25, 34, 45, 55, 78, 89, 103]

    0.upto(array1.length - 1) do |x|
      @double << [array1[x], Picture.where(:id => "#{array2[x]}..#{array2[x+1]}")]
    end

    category = @double.shuffle[0]

    @category = category[0]

    @array1 = array1

    @picture = category[1].sample

    @ai = category[1]
    @array = @ai.shuffle[0..3]

    @array = Picture.all.shuffle[0..2]
    @array << @picture

    @array.uniq!

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
