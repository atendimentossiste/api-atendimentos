require "application_system_test_case"

class ChatClientesTest < ApplicationSystemTestCase
  setup do
    @chat_cliente = chat_clientes(:one)
  end

  test "visiting the index" do
    visit chat_clientes_url
    assert_selector "h1", text: "Chat clientes"
  end

  test "should create chat cliente" do
    visit chat_clientes_url
    click_on "New chat cliente"

    fill_in "Mensagem", with: @chat_cliente.mensagem
    fill_in "Nm cliente", with: @chat_cliente.nm_cliente
    fill_in "Nr cliente", with: @chat_cliente.nr_cliente
    fill_in "Resposta ia", with: @chat_cliente.resposta_ia
    check "Status chat" if @chat_cliente.status_chat
    click_on "Create Chat cliente"

    assert_text "Chat cliente was successfully created"
    click_on "Back"
  end

  test "should update Chat cliente" do
    visit chat_cliente_url(@chat_cliente)
    click_on "Edit this chat cliente", match: :first

    fill_in "Mensagem", with: @chat_cliente.mensagem
    fill_in "Nm cliente", with: @chat_cliente.nm_cliente
    fill_in "Nr cliente", with: @chat_cliente.nr_cliente
    fill_in "Resposta ia", with: @chat_cliente.resposta_ia
    check "Status chat" if @chat_cliente.status_chat
    click_on "Update Chat cliente"

    assert_text "Chat cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat cliente" do
    visit chat_cliente_url(@chat_cliente)
    click_on "Destroy this chat cliente", match: :first

    assert_text "Chat cliente was successfully destroyed"
  end
end
