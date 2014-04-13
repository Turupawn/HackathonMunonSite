class ProyectoUsersController < ApplicationController
  before_action :set_proyecto_user, only: [:show, :edit, :update, :destroy]

  # GET /proyecto_users
  # GET /proyecto_users.json
  def index
    @proyecto_users = ProyectoUser.all
  end

  # GET /proyecto_users/1
  # GET /proyecto_users/1.json
  def show
  end

  # GET /proyecto_users/new
  def new
    @proyecto_user = ProyectoUser.new
  end

  # GET /proyecto_users/1/edit
  def edit
  end

  # POST /proyecto_users
  # POST /proyecto_users.json
  def create
    @proyecto_user = ProyectoUser.new(proyecto_user_params)

    respond_to do |format|
      if @proyecto_user.save
        format.html { redirect_to @proyecto_user, notice: 'Proyecto user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proyecto_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @proyecto_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyecto_users/1
  # PATCH/PUT /proyecto_users/1.json
  def update
    respond_to do |format|
      if @proyecto_user.update(proyecto_user_params)
        format.html { redirect_to @proyecto_user, notice: 'Proyecto user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proyecto_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyecto_users/1
  # DELETE /proyecto_users/1.json
  def destroy
    @proyecto_user.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto_user
      @proyecto_user = ProyectoUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_user_params
      params.require(:proyecto_user).permit(:proyecto_id, :user_id)
    end
end
