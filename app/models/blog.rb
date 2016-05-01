class Blog < ActiveRecord::Base

	

	has_attached_file :image, styles: { medium: "400x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image, { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }


end