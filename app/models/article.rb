class Article < ActiveRecord::Base
	
	has_attached_file :articlepic,
	:storage => :s3,
	:s3_credentials => "#{Rails.root}/config/s3.yml",
	:path => "dansbeerlist/:id/:basename.:extention"
	default_scope :order => 'articles.created_at DESC'
end
