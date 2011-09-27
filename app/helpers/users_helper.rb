module UsersHelper
	def gravatar_for(user, options = { :size => 100 })
    gravatar_image_tag(user.email.downcase, :alt => user.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
    def default
    	image_tag("gravatar.png", :alt => "Your Pic", :class => "round", :size => 100)
    end
    
end



