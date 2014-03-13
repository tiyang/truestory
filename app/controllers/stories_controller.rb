class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
    authorize @story
  end

  def create
    @story = current_user.stories.new(params[:story])
    if @story.save
      flash[:notice] = "Story was published!"
      redirect_to @story
    else
      flash[:error] = "There was an error. Try again."
      render :new
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(params[:story])
      flash[:notice] = "Story was updated."
      redirect_to @story
    else
      flash[:error] = "There was an error saving the story. Please try again."
      render :edit
    end
  end
end
