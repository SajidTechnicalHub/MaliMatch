class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :sender_requests, class_name: 'Request'
  has_many :receiver_requests, class_name: 'Request'



  # validates :wquestion, :presence => true
  # validates :wemail, :presence => true
  # validates :wname, :presence => true
  # validates :agree, :presence => true
end
