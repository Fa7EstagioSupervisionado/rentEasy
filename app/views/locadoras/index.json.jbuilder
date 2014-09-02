json.array!(@locadoras) do |locadora|
  json.extract! locadora, :id, :cnpj, :nome, :endereco_id, :responsavel, :email, :telefone
  json.url locadora_url(locadora, format: :json)
end
