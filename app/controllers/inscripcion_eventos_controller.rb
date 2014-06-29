class InscripcionEventosController < ApplicationController
  before_action :set_inscripcion_evento, only: [:show, :edit, :update, :destroy]

  # GET /inscripcion_eventos
  # GET /inscripcion_eventos.json
  def index
    @inscripcion_eventos = InscripcionEvento.all
  end

  # GET /inscripcion_eventos/1
  # GET /inscripcion_eventos/1.json
  def show
  end

  # GET /inscripcion_eventos/new
  def new
    @inscripcion_evento = InscripcionEvento.new
  end

  # GET /inscripcion_eventos/1/edit
  def edit
  end

  # POST /inscripcion_eventos
  # POST /inscripcion_eventos.json
  def create
    @inscripcion_evento = InscripcionEvento.new(inscripcion_evento_params)

    respond_to do |format|
      if @inscripcion_evento.save
        format.html { redirect_to @inscripcion_evento.evento, notice: 'Inscripcion evento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inscripcion_evento }
      else
        format.html { render action: 'new' }
        format.json { render json: @inscripcion_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscripcion_eventos/1
  # PATCH/PUT /inscripcion_eventos/1.json
  def update
    respond_to do |format|
      if @inscripcion_evento.update(inscripcion_evento_params)
        format.html { redirect_to @inscripcion_evento, notice: 'Inscripcion evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inscripcion_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscripcion_eventos/1
  # DELETE /inscripcion_eventos/1.json
  def destroy
    @inscripcion_evento.destroy
    respond_to do |format|
      format.html { redirect_to inscripcion_eventos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscripcion_evento
      @inscripcion_evento = InscripcionEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscripcion_evento_params
      params.require(:inscripcion_evento).permit(:user_id, :evento_id)
    end
end
