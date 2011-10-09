class ReportsController < ApplicationController
  respond_to :html, :js

  # GET /reports/new
  def new
    @report = Report.new
  end

  # POST /reports
  def create
    @report = Report.create(params[:report])
    respond_with(@report)
  end
  
  # GET /reports
  def index
    @reports = Report.order("created_at DESC")
    respond_with(@reports)
  end
  
  def show
    redirect_to reports_path
  end
end