json.array!(@garagens) do |garagem|
  json.extract! garagem, :id, :endereco_id, :nome
  json.url garagem_url(garagem, format: :json)
end
