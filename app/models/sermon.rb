class Sermon < ActiveRecord::Base

	has_attached_file :audio, 
										:bucket => ENV['bucket'],
 										:storage => :s3, 
 										:s3_region => 'us-east-1'

	validates_attachment_content_type :audio, :content_type => [ 'audio/mp3', 'audio/mpeg']

end  


