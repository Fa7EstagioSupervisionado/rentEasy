json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :placa, :marca, :ano, :modelo, :cor, :alugado, :valor_diaria, :garagem_id
  json.url veiculo_url(veiculo, format: :json)
end
