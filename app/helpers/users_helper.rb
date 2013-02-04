module UsersHelper
	def gravatar_for(user, *size)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		gravatar_url_sized = "https://secure.gravatar.com/avatar/#{gravatar_id}\?s=#{size[0]}"
		if size.empty?
			image_tag(gravatar_url, alt: user.name, class: "gravatar img-rounded")
		else 
			image_tag(gravatar_url_sized, alt: user.name, class: "gravatar img-rounded")
		end
	end
end
