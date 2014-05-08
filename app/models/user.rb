# app/models/user.rb

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :user_type, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :posts

  def role?(base_role)
  	role == base_role.to_s
  end

end
