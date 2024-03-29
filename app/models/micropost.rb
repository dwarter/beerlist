class Micropost < ActiveRecord::Base
	attr_accessible :content, :newbeer, :grade
	
	belongs_to :user
	validates :newbeer, :presence => true, :length => { :maximum => 140 }
	validates :grade, :presence => true, :length => { :maximum => 140 }
	validates :content, :presence => true, :length => { :maximum => 500 }
    validates :user_id, :presence => true
	
	default_scope :order => 'microposts.created_at DESC'
	
	# Return microposts from the users being followed by the given user.
  scope :from_users_followed_by, lambda { |user| followed_by(user) }

  private

    # Return an SQL condition for users followed by the given user.
    # We include the user's own id as well.
    def self.followed_by(user)
      following_ids = %(SELECT followed_id FROM relationships
                        WHERE follower_id = :user_id)
      where("user_id IN (#{following_ids}) OR user_id = :user_id",
            { :user_id => user })
    end
end