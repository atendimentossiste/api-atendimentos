class UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /usuarios or /usuarios.json
  def index
    @usuarios = Usuario.all
    respond_to do |format|
      format.html
      format.json { render json: @usuarios }
    end
  end

  # GET /usuarios/1 or /usuarios/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @usuario }
    end
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios or /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: "Usuario was successfully created." }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1 or /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: "Usuario was successfully updated." }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1 or /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: "Usuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :numero, :tipo_de_envio, :email, :senha, :descricao)
  end
end