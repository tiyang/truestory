class VotesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    vote = current_user.votes.build(story: @story)

    if vote.save
      flash[:notice] = "You believe this is a true story."
      redirect_to [@story]
    else
      flash[:error] = "There is an error."
      redirect_to [@story]
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @vote = current_user.votes.find(params[:id])

    if @vote.destroy
      flash[:notice] = "You don't believe this is a true story!"
      redirect_to [@story]
    else
      flash[:error] = "There is an error."
    end
  end


end
