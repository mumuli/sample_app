module UsersHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user, options = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		# Uncomment below for non-secure link
		# gravatar_url = "http://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt:user.name, class: "gravatar")
	end
end
