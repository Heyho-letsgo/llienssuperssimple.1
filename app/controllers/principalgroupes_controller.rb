class PrincipalgroupesController < ApplicationController
  before_action :set_principalgroupe, only: [:show, :edit, :update, :destroy]

  # GET /principalgroupes
  # GET /principalgroupes.json
  def index
    @principalgroupes = Principalgroupe.all
  end

  # GET /principalgroupes/1
  # GET /principalgroupes/1.json
  def show
  end

  # GET /principalgroupes/new
  def new
    @principalgroupe = Principalgroupe.new
  end

  # GET /principalgroupes/1/edit
  def edit
  end

  # POST /principalgroupes
  # POST /principalgroupes.json
  def create
    @principalgroupe = Principalgroupe.new(principalgroupe_params)

    respond_to do |format|
      if @principalgroupe.save
        format.html { redirect_to @principalgroupe, notice: 'Principalgroupe was successfully created.' }
        format.json { render :show, status: :created, location: @principalgroupe }
      else
        format.html { render :new }
        format.json { render json: @principalgroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principalgroupes/1
  # PATCH/PUT /principalgroupes/1.json
  def update
    respond_to do |format|
      if @principalgroupe.update(principalgroupe_params)
        format.html { redirect_to @principalgroupe, notice: 'Principalgroupe was successfully updated.' }
        format.json { render :show, status: :ok, location: @principalgroupe }
      else
        format.html { render :edit }
        format.json { render json: @principalgroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principalgroupes/1
  # DELETE /principalgroupes/1.json
  def destroy
    @principalgroupe.destroy
    respond_to do |format|
      format.html { redirect_to principalgroupes_url, notice: 'Principalgroupe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principalgroupe
      @principalgroupe = Principalgroupe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principalgroupe_params
      params.require(:principalgroupe).permit(:nom)
    end
end
