class AddUsuarioRefToChatClientes < ActiveRecord::Migration[8.0]
  def change
    add_reference :chat_clientes, :usuario, null: false, foreign_key: true, default: Usuario.first.id
  end
end
