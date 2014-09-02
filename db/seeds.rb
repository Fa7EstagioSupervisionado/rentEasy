# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Popular veiculos
Veiculo.create(placa: 'HXB-3890', marca: 'FIAT', ano: 2009, modelo: 'UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1)
Veiculo.create(placa: 'HBB-4090', marca: 'Pegeout', ano: 2004, modelo: '204', cor: 'branco', valor_diaria: 250, alugado: false, categoria_id: 1, garagem_id: 1)
Veiculo.create(placa: 'HZT-3890', marca: 'CITROEN', ano: 2010, modelo: 'RX-7', cor: 'preto', valor_diaria: 300, alugado: false, categoria_id: 1, garagem_id: 1)
Veiculo.create(placa: 'HVB-4990', marca: 'FIAT', ano: 2009, modelo: 'NOVO UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1)
Veiculo.create(placa: 'HBO-3890', marca: 'WOLKSVAGEN', ano: 2005, modelo: 'GOL', cor: 'prata', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1)







