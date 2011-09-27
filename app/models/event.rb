class Event < ActiveRecord::Base
	
	has_many :participations
	has_many :users, :through => :participations
	has_attached_file :eventpic,
	:storage => :s3,
	:s3_credentials => "#{Rails.root}/config/s3.yml",
	:path => "dansbeerlist/:id/:basename.:extention"
	default_scope :order => 'events.created_at DESC'
end
