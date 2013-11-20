Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
	# provider :facebook, "546447792114697", "d33fbad158e3966ab50769e4b87c81af"
end