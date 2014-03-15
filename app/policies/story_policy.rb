class StoryPolicy
  attr_reader :user, :story 

  def initialize(user, story)
    @user = user
    @story = story
  end

  def create?
    user.present?
  end

  def new?
    create?
  end

  def update?
    user.present? && (story.user == user || user.role?(:admin))
  end

  def edit?
    update?
  end


end
