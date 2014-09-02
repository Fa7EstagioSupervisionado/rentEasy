json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nome, :capacidade_passageiros, :qt_bagabem_pequena, :qt_bagabem_grande
  json.url categoria_url(categoria, format: :json)
end
