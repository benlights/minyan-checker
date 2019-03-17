class MinyansController < ApplicationController
  before_action :set_minyan, only: [:show, :edit, :update, :destroy]

  # GET /minyans
  # GET /minyans.json
  def index
    @minyans = Minyan.all
  end

  # GET /minyans/1
  # GET /minyans/1.json
  def show
    @users = @minyan.users
  end

  # GET /minyans/new
  def new
    @minyan = Minyan.new
  end

  # GET /minyans/1/edit
  def edit
  end

  # POST /minyans
  # POST /minyans.json
  def create
    @minyan = Minyan.new(minyan_params)

    respond_to do |format|
      if @minyan.save
        format.html { redirect_to @minyan, notice: 'Minyan was successfully created.' }
        format.json { render :show, status: :created, location: @minyan }
      else
        format.html { render :new }
        format.json { render json: @minyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minyans/1
  # PATCH/PUT /minyans/1.json
  def update
    respond_to do |format|
      if @minyan.update(minyan_params)
        format.html { redirect_to @minyan, notice: 'Minyan was successfully updated.' }
        format.json { render :show, status: :ok, location: @minyan }
      else
        format.html { render :edit }
        format.json { render json: @minyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minyans/1
  # DELETE /minyans/1.json
  def destroy
    @minyan.destroy
    respond_to do |format|
      format.html { redirect_to minyans_url, notice: 'Minyan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minyan
      @minyan = Minyan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minyan_params
      params.require(:minyan).permit(:name, :time, :location, :notification_time)
    end
end
