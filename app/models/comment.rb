class Comment < ActiveRecord::Base
  belongs_to :story
  attr_accessible :body
end
