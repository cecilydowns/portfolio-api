require 'pry'

class ProjectsController < ApplicationController
    def index
        projects = Project.all
        render json: projects, :include => [:technologies]
    end

    def show
        project = Project.find_by(slug: params['slug'])
        render json: project
    end
end