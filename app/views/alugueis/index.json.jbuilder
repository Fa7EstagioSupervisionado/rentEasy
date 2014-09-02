json.array!(@alugueis) do |aluguel|
  json.extract! aluguel, :id, :cliente_id, :veiculo_id, :dt_recebimento, :dt_devolucao, :preco_total
  json.url aluguel_url(aluguel, format: :json)
end
