class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy, :report]
  before_action :is_user_logged_in?
  # GET /reports
  # GET /reports.json
  def index
    if (SuperAdmin.where(user_id: current_user.id).first.nil? == false)
      @reports = Report.paginate(page: params[:page], per_page: 7).all
    else
      @reports = Report.paginate(page: params[:page], per_page: 7).where(post_id: Post.where(user_id: User.where(address: User.where(id: current_user.id).first.address)))
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    if (Report.where(post_id: @report.post_id).count > 1 and Dumpster.where(post_id: @report.post_id).first.nil?)
      Dumpster.create(post_id: @report.post_id)
      Post.where(id: @report.post_id).update(active: false)
      @user_id = Post.where(id: @report.post_id).first.user_id
      if Blacklist.where(user_id: User.where(id: @user_id)).first.nil?
        Blacklist.create(user_id: User.where(id: @user_id).first.id)
      end
    end
    respond_to do |format|
      if @report.save
        format.html { redirect_to root_path, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def report
    @report = Report.new(user_id:current_user.id, post_id: @post.id)
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:post_id, :user_id, :short_comment)
    end
end
