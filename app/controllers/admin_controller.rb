class AdminController < ApplicationController
	before_action :authenticate_user!
	before_filter :is_student

	def index
		@on_hold = User.where(role: :student, status: :registered)
		@professors = User.where(role: :professor)
		@students = Student.all
		render "admin/dashboard/professor" if current_user.professor?
		render "admin/dashboard/admin" if current_user.admin?
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
		def is_student
			if not user_signed_in?
				flash.notice = "Acesso não autorizado."
				redirect_to root_path
			else
				if current_user.student?
					flash.notice = "Acesso não autorizado."
					redirect_to root_path
				end
			end
		end

    def user_params
      params.require(:user).permit(:email)
    end
end
