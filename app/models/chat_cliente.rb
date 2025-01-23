class ChatCliente < ApplicationRecord
    validates :nm_cliente, presence: true
    validates :nr_cliente, presence: true
    validates :mensagem, presence: true
    validates :status_chat, inclusion: { in: [true, false] }
    validates :resposta_ia, presence: true
end
