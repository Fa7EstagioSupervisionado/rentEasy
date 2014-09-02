json.array!(@opcionais) do |opcional|
  json.extract! opcional, :id, :descricao, :nome, :valor, :veiculo_id
  json.url opcional_url(opcional, format: :json)
end
