module UsersHelper

    # Returns the Gravatar for the given user.
  def gravatar_for(user, grav_size=25)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    options = {:size => grav_size}
    image_tag(gravatar_url, alt: user.name, class: "gravatar", :gravatar => options)
  end
end
