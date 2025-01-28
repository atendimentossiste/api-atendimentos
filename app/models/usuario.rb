class Usuario < ApplicationRecord
    validates :nome, presence: true
    validates :numero, presence: true
    validates :tipo_de_envio, inclusion: { in: [true, false] }
    validates :email, presence: true
    validates :senha, presence: true
    validates :descricao, presence: true
end
