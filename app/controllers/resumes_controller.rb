class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    @new_resume = Resume.new
  end

  def show
    @resume = Resume.find(params[:id])
    @objective = @resume.objective
    @skills = @resume.skills
    @schools = @resume.schools
    @jobs = @resume.experiences
    @hobbies = @resume.hobbies
    @references = @resume.references
    @customs = @resume.customs
  end

  def edit
    @resume = Resume.find(params[:id])
    @objective = Objective.new
    @skills = @resume.skills
    @schools = @resume.schools
    @jobs = @resume.experiences
    @hobbies = @resume.hobbies
    @references = @resume.references
    @customs = @resume.customs
  end

  def create
    @resume = Resume.new
    @resume.user_id = User.first.id
    @resume.save
    redirect_to resume_path(@resume)
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to root_path
  end
end
