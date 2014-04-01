class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_many :stories
  has_many :favors, dependent: :destroy
  has_many :votes, dependent: :destroy

  def role?(base_role)
    role == base_role.to_s
  end

  def favored(story)
    self.favors.where(story_id: story.id).first
  end 

  def voted(story)
    self.votes.where(story_id: story.id).first
  end 
end
