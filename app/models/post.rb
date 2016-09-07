class Post < ActiveRecord::Base
	has_attached_file :images, styles: { medium: "500,500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :images, content_type: /\Aimage\/.*\z/
end
