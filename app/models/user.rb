class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
  :recoverable, :rememberable, :trackable , :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :policies

  # validates_presence_of :email, :message=>"is missing"
  # validates_presence_of :password, :message=>"is missing"
  # validates_presence_of :password_confirmation , :message => "is missing"
end
