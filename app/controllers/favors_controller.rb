class FavorsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    favor = current_user.favors.build(story: @story)

    if favor.save
      flash[:notice] = "Favored story"
      redirect_to [@story]
    else
      flash[:error] = "Unable to add favor. Please try again."
      redirect_to [@story]
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @favor = current_user.favors.find(params[:id])

    if @favor.destroy
      flash[:notice] = "Removed favor."
      redirect_to [@story]
    else
      flash[:error] = "Unable to remove favor. Please try again."
      redirect_to [@story]
    end
  end
end
