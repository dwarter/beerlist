class Forum < ActiveRecord::Base
	attr_accessible :discussion, :name
	
	belongs_to :user
	validates :name, :presence => true, :length => { :maximum => 140 }
	validates :discussion, :presence => true, :length => { :maximum => 5000 }
    validates :user_id, :presence => true
	
	default_scope :order => 'forums.created_at DESC'
end
