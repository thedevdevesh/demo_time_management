class WorklogsController < ApplicationController
    before_action :set_work_log, only: [:edit, :update, :destory]

    def index
        @worklogs = Worklog.includes(:user).all
    end

    def new
        @worklog = Worklog.new
    end

    def def(create)
        @worklog = Worklog.new(worklog_params)
        if @worklog.save
          flash[:success] = "worklog successfully created"
          redirect_to @worklog_path
        else
          flash[:error] = "Something went wrong"
          render "new"
        end
    end

    def update
        if @worklog.update(worklog_params)
          flash[:success] = "worklog was successfully updated"
          redirect_to @worklog
        else
          flash[:error] = "Something went wrong"
          render "edit"
        end
    end

    def destroy
        @worklog.destroy
        redirect_to worklogs_path, notice: "work log destroyed"
    end

    private

    def set_work_log
        @worklog = Worklog.find(params[:id])
    end

    def worklog_params
        params.require(:worklog).permit(:user_id, :date, :hours, :notes)
    end
end
