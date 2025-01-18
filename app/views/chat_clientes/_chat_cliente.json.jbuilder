json.extract! chat_cliente, :id, :nm_cliente, :nr_cliente, :mensagem, :status_chat, :resposta_ia, :created_at, :updated_at
json.url chat_cliente_url(chat_cliente, format: :json)
