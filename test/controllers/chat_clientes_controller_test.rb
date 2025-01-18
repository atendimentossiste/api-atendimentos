require "test_helper"

class ChatClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_cliente = chat_clientes(:one)
  end

  test "should get index" do
    get chat_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_cliente_url
    assert_response :success
  end

  test "should create chat_cliente" do
    assert_difference("ChatCliente.count") do
      post chat_clientes_url, params: { chat_cliente: { mensagem: @chat_cliente.mensagem, nm_cliente: @chat_cliente.nm_cliente, nr_cliente: @chat_cliente.nr_cliente, resposta_ia: @chat_cliente.resposta_ia, status_chat: @chat_cliente.status_chat } }
    end

    assert_redirected_to chat_cliente_url(ChatCliente.last)
  end

  test "should show chat_cliente" do
    get chat_cliente_url(@chat_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_cliente_url(@chat_cliente)
    assert_response :success
  end

  test "should update chat_cliente" do
    patch chat_cliente_url(@chat_cliente), params: { chat_cliente: { mensagem: @chat_cliente.mensagem, nm_cliente: @chat_cliente.nm_cliente, nr_cliente: @chat_cliente.nr_cliente, resposta_ia: @chat_cliente.resposta_ia, status_chat: @chat_cliente.status_chat } }
    assert_redirected_to chat_cliente_url(@chat_cliente)
  end

  test "should destroy chat_cliente" do
    assert_difference("ChatCliente.count", -1) do
      delete chat_cliente_url(@chat_cliente)
    end

    assert_redirected_to chat_clientes_url
  end
end
