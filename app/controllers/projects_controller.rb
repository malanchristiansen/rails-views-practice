class ProjectsController < ApplicationController
    before_action :read_project
    def index
    end 

    def show 
        @project = @projects.find do |project|
            project[:id] == params[:id].to_i 
        end 
    end 

    def new
    end 

    private 
    def read_project 
        @projects = [
            {
                id: 1,
                name: "terminal app",
                github_status: true,
                date_completed: "17/08/2020"
            },
            {
                id: 2,
                name: "react app",
                github_status: false,
                date_completed: "20/10/2020"
            }
        ]
    end 
end
