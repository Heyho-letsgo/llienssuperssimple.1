class SousgroupesController < ApplicationController
  before_action :set_sousgroupe, only: [:show, :edit, :update, :destroy]

  # GET /sousgroupes
  # GET /sousgroupes.json
  def index
    @sousgroupes = Sousgroupe.all
  end

  # GET /sousgroupes/1
  # GET /sousgroupes/1.json
  def show
  end

  # GET /sousgroupes/new
  def new
    @sousgroupe = Sousgroupe.new
  end

  # GET /sousgroupes/1/edit
  def edit
  end

  # POST /sousgroupes
  # POST /sousgroupes.json
  def create
    @sousgroupe = Sousgroupe.new(sousgroupe_params)

    respond_to do |format|
      if @sousgroupe.save
        format.html { redirect_to @sousgroupe, notice: 'Sousgroupe was successfully created.' }
        format.json { render :show, status: :created, location: @sousgroupe }
      else
        format.html { render :new }
        format.json { render json: @sousgroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sousgroupes/1
  # PATCH/PUT /sousgroupes/1.json
  def update
    respond_to do |format|
      if @sousgroupe.update(sousgroupe_params)
        format.html { redirect_to @sousgroupe, notice: 'Sousgroupe was successfully updated.' }
        format.json { render :show, status: :ok, location: @sousgroupe }
      else
        format.html { render :edit }
        format.json { render json: @sousgroupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sousgroupes/1
  # DELETE /sousgroupes/1.json
  def destroy
    @sousgroupe.destroy
    respond_to do |format|
      format.html { redirect_to sousgroupes_url, notice: 'Sousgroupe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sousgroupe
      @sousgroupe = Sousgroupe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sousgroupe_params
      params.require(:sousgroupe).permit(:name, :principalgroupe_id)
    end
end
