class ScubasController < ApplicationController

def index
	@users = User.all
  @scubas = Scuba.all
  @scuba = Scuba.new
end

def create
  @scuba = Scuba.create(params[:scuba])
  respond_to do |format|
      format.js
  end
end



end
