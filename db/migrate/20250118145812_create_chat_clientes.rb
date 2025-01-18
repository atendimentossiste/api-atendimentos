class CreateChatClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :chat_clientes do |t|
      t.string :nm_cliente
      t.string :nr_cliente
      t.string :mensagem
      t.boolean :status_chat
      t.string :resposta_ia

      t.timestamps
    end
  end
end
