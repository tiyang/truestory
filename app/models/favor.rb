class Favor < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  attr_accessible :story
end
