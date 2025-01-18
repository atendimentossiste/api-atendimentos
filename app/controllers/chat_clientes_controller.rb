class ChatClientesController < ApplicationController
  before_action :set_chat_cliente, only: %i[ show edit update destroy ]

  # GET /chat_clientes or /chat_clientes.json
  def index
    @chat_clientes = ChatCliente.all
  end

  # GET /chat_clientes/1 or /chat_clientes/1.json
  def show
  end

  # GET /chat_clientes/new
  def new
    @chat_cliente = ChatCliente.new
  end

  # GET /chat_clientes/1/edit
  def edit
  end

  # POST /chat_clientes or /chat_clientes.json
  def create
    @chat_cliente = ChatCliente.new(chat_cliente_params)

    respond_to do |format|
      if @chat_cliente.save
        format.html { redirect_to @chat_cliente, notice: "Chat cliente was successfully created." }
        format.json { render :show, status: :created, location: @chat_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_clientes/1 or /chat_clientes/1.json
  def update
    respond_to do |format|
      if @chat_cliente.update(chat_cliente_params)
        format.html { redirect_to @chat_cliente, notice: "Chat cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @chat_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_clientes/1 or /chat_clientes/1.json
  def destroy
    @chat_cliente.destroy!

    respond_to do |format|
      format.html { redirect_to chat_clientes_path, status: :see_other, notice: "Chat cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_cliente
      @chat_cliente = ChatCliente.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def chat_cliente_params
      params.expect(chat_cliente: [ :nm_cliente, :nr_cliente, :mensagem, :status_chat, :resposta_ia ])
    end
end
