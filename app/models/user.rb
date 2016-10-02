class User < ApplicationRecord

	enum role: [:student, :professor, :admin]
	enum status: [:registered, :confirmed]

	has_many :session_blocks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
