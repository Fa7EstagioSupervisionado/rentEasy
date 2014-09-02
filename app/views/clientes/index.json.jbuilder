json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cpf, :dt_nascimento, :sexo, :email, :endereco_id, :telefone, :nr_habilitacao
  json.url cliente_url(cliente, format: :json)
end
