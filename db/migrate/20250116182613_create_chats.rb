class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.string :nm_cliente
      t.string :nr_cliente
      t.string :mensagem
      t.boolean :status_chat
      t.string :resposta_ia

      t.timestamps
    end
  end
end
