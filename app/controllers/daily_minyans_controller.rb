class DailyMinyansController < ApplicationController
  before_action :set_daily_minyan, only: [:show, :edit, :update, :destroy]

  # GET /daily_minyans
  # GET /daily_minyans.json
  def index
    @daily_minyans = DailyMinyan.all
  end

  # GET /daily_minyans/1
  # GET /daily_minyans/1.json
  def show
  end

  # GET /daily_minyans/new
  def new
    @daily_minyan = DailyMinyan.new
  end

  # GET /daily_minyans/1/edit
  def edit
  end

  # POST /daily_minyans
  # POST /daily_minyans.json
  def create
    @daily_minyan = DailyMinyan.new(daily_minyan_params)

    respond_to do |format|
      if @daily_minyan.save
        format.html { redirect_to @daily_minyan, notice: 'Daily minyan was successfully created.' }
        format.json { render :show, status: :created, location: @daily_minyan }
      else
        format.html { render :new }
        format.json { render json: @daily_minyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_minyans/1
  # PATCH/PUT /daily_minyans/1.json
  def update
    respond_to do |format|
      if @daily_minyan.update(daily_minyan_params)
        format.html { redirect_to @daily_minyan, notice: 'Daily minyan was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_minyan }
      else
        format.html { render :edit }
        format.json { render json: @daily_minyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_minyans/1
  # DELETE /daily_minyans/1.json
  def destroy
    @daily_minyan.destroy
    respond_to do |format|
      format.html { redirect_to daily_minyans_url, notice: 'Daily minyan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_minyan
      @daily_minyan = DailyMinyan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_minyan_params
      params.fetch(:daily_minyan, {})
    end
end
