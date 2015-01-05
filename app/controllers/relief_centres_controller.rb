class ReliefCentresController < ApplicationController
  before_action :set_relief_centre, only: [:show, :edit, :update, :destroy]

  # GET /relief_centres
  # GET /relief_centres.json
  def index
    @relief_centres = ReliefCentre.all
  end

  # GET /relief_centres/1
  # GET /relief_centres/1.json
  def show
  end

  # GET /relief_centres/new
  def new
    @relief_centre = ReliefCentre.new
    @users = User.all
  end

  # GET /relief_centres/1/edit
  def edit
  end

  # POST /relief_centres
  # POST /relief_centres.json
  def create
    @relief_centre = ReliefCentre.new(relief_centre_params)


    respond_to do |format|
      if @relief_centre.save
        format.html { redirect_to @relief_centre, notice: 'Relief centre was successfully created.' }
        format.json { render :show, status: :created, location: @relief_centre }
      else
        format.html { render :new }
        format.json { render json: @relief_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relief_centres/1
  # PATCH/PUT /relief_centres/1.json
  def update
    respond_to do |format|
      if @relief_centre.update(relief_centre_params)
        format.html { redirect_to @relief_centre, notice: 'Relief centre was successfully updated.' }
        format.json { render :show, status: :ok, location: @relief_centre }
      else
        format.html { render :edit }
        format.json { render json: @relief_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relief_centres/1
  # DELETE /relief_centres/1.json
  def destroy
    @relief_centre.destroy
    respond_to do |format|
      format.html { redirect_to relief_centres_url, notice: 'Relief centre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relief_centre
      @relief_centre = ReliefCentre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relief_centre_params
      params.require(:relief_centre).permit(:name, :address, :gps_coordinate, :mukim, :district, :user_ids => [])
    end
end
