class Participation < ActiveRecord::Base
	belongs_to :event
	belongs_to :user
	#put in a validation here
	
    
end
