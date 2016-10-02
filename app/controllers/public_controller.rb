class PublicController < ApplicationController
  
  before_filter :is_user, only: [:index]

  def index
  end

  private
  	def is_user
  		if user_signed_in?
				redirect_to admin_path if not current_user.student?
			end
		end
end