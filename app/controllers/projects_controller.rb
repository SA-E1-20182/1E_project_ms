class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.all
    json_response(@projects)
  end

  # POST /projects
  def create
    @project = Project.new(params.require(:project).permit(:name, :description, :genre, :cover_url, :author_id))
    @project.created_at = Time.now
    @project.total_pages = 0
    @project.current_version_id = "blank"
    @project.save

    json_response(@project, :created)
  end

  # GET /projects/:id
  def show
    json_response(@project)
  end

  # PUT /projects/:id
  def update
    @project.update(project_params)
    head :no_content
  end

  # DELETE /projects/:id
  def destroy
    @project.destroy
    head :no_content
  end

  # PUT /projects/:id/version
  def updateVersion
    @project = Project.find(params[:id])
    @project.update_attribute(:current_version_id, params[:current_version_id])
  end

  private

  def project_params
    # whitelist params
    params.permit(:name, :description, :genre, :cover_url)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
