class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
        activities = Activity.find_by(id:params[:id])
        if activities
            activities.destroy
        else
            render json: {error: "Activity not found"}, status: 404
        end

    end

end
