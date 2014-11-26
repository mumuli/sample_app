module UsersHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		# Uncomment below for non-secure link
		# gravatar_url = "http://www.gravatar.com/avatar/#{gravatar_id}"
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt:user.name, class: "gravatar")
	end
end
