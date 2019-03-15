class DailyMinyanUsersController < ApplicationController
  before_action :set_daily_minyan_user, only: [:show, :edit, :update, :destroy]

  # GET /daily_minyan_users
  # GET /daily_minyan_users.json
  def index
    @daily_minyan_users = DailyMinyanUser.all
  end

  # GET /daily_minyan_users/1
  # GET /daily_minyan_users/1.json
  def show
  end

  # GET /daily_minyan_users/new
  def new
    @daily_minyan_user = DailyMinyanUser.new
  end

  # GET /daily_minyan_users/1/edit
  def edit
  end

  # POST /daily_minyan_users
  # POST /daily_minyan_users.json
  def create
    @daily_minyan_user = DailyMinyanUser.new(daily_minyan_user_params)

    respond_to do |format|
      if @daily_minyan_user.save
        format.html { redirect_to @daily_minyan_user, notice: 'Daily minyan user was successfully created.' }
        format.json { render :show, status: :created, location: @daily_minyan_user }
      else
        format.html { render :new }
        format.json { render json: @daily_minyan_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_minyan_users/1
  # PATCH/PUT /daily_minyan_users/1.json
  def update
    respond_to do |format|
      if @daily_minyan_user.update(daily_minyan_user_params)
        format.html { redirect_to @daily_minyan_user, notice: 'Daily minyan user was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_minyan_user }
      else
        format.html { render :edit }
        format.json { render json: @daily_minyan_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_minyan_users/1
  # DELETE /daily_minyan_users/1.json
  def destroy
    @daily_minyan_user.destroy
    respond_to do |format|
      format.html { redirect_to daily_minyan_users_url, notice: 'Daily minyan user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_minyan_user
      @daily_minyan_user = DailyMinyanUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_minyan_user_params
      params.fetch(:daily_minyan_user, {})
    end
end
