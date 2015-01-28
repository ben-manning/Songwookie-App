class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :favorites
  has_many :songs, :through => :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#validates :username, presence: true
	#validates :email,     presence: true
	#validates :password,  presence: true
end
