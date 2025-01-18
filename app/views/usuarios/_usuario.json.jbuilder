json.extract! usuario, :id, :nome, :numero, :tipo_de_envio, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
