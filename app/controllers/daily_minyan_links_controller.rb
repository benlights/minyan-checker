class DailyMinyanLinksController < ApplicationController
  before_action :set_daily_minyan_link, only: [:show, :edit, :update, :destroy]

  def yes
    @link = DailyMinyanLink.find_by(link: params[:link])
    @link.update(joining: true)
    if @link.save
      render
    end
  end
  # GET /daily_minyan_links
  # GET /daily_minyan_links.json
  def index
    @daily_minyan_links = DailyMinyanLink.all
  end

  # GET /daily_minyan_links/1
  # GET /daily_minyan_links/1.json
  def show
  end

  # GET /daily_minyan_links/new
  def new
    @daily_minyan_link = DailyMinyanLink.new
  end

  # GET /daily_minyan_links/1/edit
  def edit
  end


  # POST /daily_minyan_links
  # POST /daily_minyan_links.json
  def create
    @daily_minyan_link = DailyMinyanLink.new(daily_minyan_link_params)

    respond_to do |format|
      if @daily_minyan_link.save
        format.html { redirect_to @daily_minyan_link, notice: 'Daily minyan link was successfully created.' }
        format.json { render :show, status: :created, location: @daily_minyan_link }
      else
        format.html { render :new }
        format.json { render json: @daily_minyan_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_minyan_links/1
  # PATCH/PUT /daily_minyan_links/1.json
  def update
    respond_to do |format|
      if @daily_minyan_link.update(daily_minyan_link_params)
        format.html { redirect_to @daily_minyan_link, notice: 'Daily minyan link was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_minyan_link }
      else
        format.html { render :edit }
        format.json { render json: @daily_minyan_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_minyan_links/1
  # DELETE /daily_minyan_links/1.json
  def destroy
    @daily_minyan_link.destroy
    respond_to do |format|
      format.html { redirect_to daily_minyan_links_url, notice: 'Daily minyan link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_minyan_link
      @daily_minyan_link = DailyMinyanLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_minyan_link_params
      params.fetch(:daily_minyan_link, {})
    end
end
