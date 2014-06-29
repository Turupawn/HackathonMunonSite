class VotacionsController < ApplicationController
  before_action :set_votacion, only: [:show, :edit, :update, :destroy]

  # GET /votacions
  # GET /votacions.json
  def index
    @votacions = Votacion.all
  end

  # GET /votacions/1
  # GET /votacions/1.json
  def show
  end

  # GET /votacions/new
  def new
    @votacion = Votacion.new
  end

  # GET /votacions/1/edit
  def edit
  end

  # POST /votacions
  # POST /votacions.json
  def create
    @votacion = Votacion.new(votacion_params)

    respond_to do |format|
      if @votacion.save
        format.html { redirect_to @votacion.proyecto.evento, notice: 'Votacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @votacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @votacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votacions/1
  # PATCH/PUT /votacions/1.json
  def update
    respond_to do |format|
      if @votacion.update(votacion_params)
        format.html { redirect_to @votacion.proyecto.evento, notice: 'Votacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @votacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votacions/1
  # DELETE /votacions/1.json
  def destroy
    @votacion.destroy
    respond_to do |format|
      format.html { redirect_to votacions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_votacion
      @votacion = Votacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def votacion_params
      params.require(:votacion).permit(:proyecto_id, :user_id, :valor)
    end
end
