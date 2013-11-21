class SessionsController < ApplicationController
  def new
  end

  def create
  	auth_hash = request.env['omniauth.auth']

  	@authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  	if @authorization
  		render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
  	else 
  		user = User.create :name => auth_hash["info"]["name"], :email =>auth_hash["info"]["email"]
  		user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
  		user.save
      # binding.pry
      # redirect_to "scubas/index"
  		render :text => "Hi #{user.name}! You've signed up."
  	end
  end

  def failure
  end

  def destroy
  	# render :text => "#{user.name}, you've logged out!"
  	# render :text => "#{user.name}, you've logged out!"

  	session[:user_id] = nil
  	render :text => "You've logged out!"
  end
end
