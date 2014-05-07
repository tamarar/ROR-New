class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  
  attr_accessible :body, :title, :user
  has_many :comments

  default_scope { order('created_at DESC') }
end
