class PagesController < ApplicationController
	#
	http_basic_authenticate_with name:"unfly", password: "flyfly"
  def home
  end
end
