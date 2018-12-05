class WsprojectsController < ApplicationController
  soap_service namespace: 'urn:WashOutProjects', camelize_wsdl: :lower
    
    soap_action "show",
                :args   => { :id => :string },
                :return => { :name => :string, :description => :string, :genre => :string, :cover_url => :string }
    def show
        @project = Project.find(params[:id])
        render :soap => { :name => @project.name, :description => @project.description, :genre => @project.genre, :cover_url => :string }
    end
    
end
