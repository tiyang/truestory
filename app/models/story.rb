class Story < ActiveRecord::Base
  attr_accessible :body, :title, :user
  has_many :comments
  has_many :favors, dependent: :destroy
  belongs_to :user
  default_scope { order('created_at DESC') }
end
