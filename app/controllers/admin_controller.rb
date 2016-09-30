class AdminController < ApplicationController
	before_action :authenticate_user!
	before_filter :is_admin

	def index
		@professors = User.where(role: :professor)
		@students = Student.all
	end

	def turn_professor
		@professor = User.find_by(email: user_params[:email])
		if @professor.nil?
			flash.notice = "Usuario não encontrado."
			redirect_to :back
		elsif @professor.professor?
			flash.notice = "Usuario já é um Professor."
			redirect_to :back
		end

		@professor.professor!
	end

	private
		def is_admin
			if not user_signed_in?
				flash.notice = "Acesso não autorizado."
				redirect_to root_path
			else
				if not current_user.admin?
					flash.notice = "Acesso não autorizado."
					redirect_to root_path
				end
			end
		end

    def user_params
      params.require(:user).permit(:email)
    end
end
