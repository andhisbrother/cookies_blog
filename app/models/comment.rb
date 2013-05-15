class Comment < ActiveRecord::Base
	belongs_to :post
  attr_accessible :author, :comment_body, :email, :post_id
  validates :author, :comment_body, :email, :presence => true
end
