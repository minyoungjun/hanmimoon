class Picture < ActiveRecord::Base
    has_attached_file :file, :styles => {:small => "200x200>", :medium => "800x800>"}, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

    has_one :content
    has_many  :problems

end

