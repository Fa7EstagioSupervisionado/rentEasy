json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :cep, :rua, :bairro, :numero, :cidade, :estado
  json.url endereco_url(endereco, format: :json)
end
