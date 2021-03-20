class ReportsController < ApplicationController

    def index
        @reports = Report.all
    end

    def new
        @report = Report.new
    end

    def show
        @report = Report.find(params[:id])
    end

    def create
        @report = current_user.reports.build(report_params)
        if @report.save
            redirect_to new_appointment_path 
        else
            render :new, status: :unprocessable_entity
        end
    end

   
    private
        def report_params
            params.require(:report).permit(:symptomps)
        end
end
