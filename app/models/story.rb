class Story < ActiveRecord::Base
  attr_accessible :body, :title, :user
  has_many :comments
  has_many :favors, dependent: :destroy
  has_many :votes, dependent: :destroy
  belongs_to :user
  default_scope { order('created_at DESC') }

  def points
    self.votes.count
  end
end
