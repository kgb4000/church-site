class Blog < ActiveRecord::Base

	belongs_to :user

	has_attached_file :image, styles: { large: "1000x1000>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
										:bucket => ENV['bucket'],
 										:storage => :s3,
 										:s3_region => 'us-east-1'

  validates_attachment_content_type :image, { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }


end