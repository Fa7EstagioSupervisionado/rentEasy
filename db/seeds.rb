# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Popular endereços
Endereco.create(cep: '656565656', rua: 'Oliveira Paiva', bairro: 'Vincente pinzon', numero: '123', cidade: 'Fortaleza', estado: 'CE')
Endereco.create(cep: '656565655', rua: 'Jardim das Oliveiras', bairro: 'Cidade 2000', numero: '321', cidade: 'Fortaleza', estado: 'CE')
Endereco.create(cep: '685656578', rua: 'Francisco paz', bairro: 'Edson Queiroz', numero: '231', cidade: 'Fortaleza', estado: 'CE')

# Popular Garagem
Garagem.create(nome: 'Garagem A', endereco_id: 1)
Garagem.create(nome: 'Garagem B', endereco_id: 2)
Garagem.create(nome: 'Garagem C', endereco_id: 3)

# Popular Categorias
Categoria.create(nome: 'Carro', capacidade_passageiros: 4, qt_bagagem_pequena: 4, qt_bagagem_grande: 2)
Categoria.create(nome: 'Moto', capacidade_passageiros: 2, qt_bagagem_pequena: 1, qt_bagagem_grande: 1)
Categoria.create(nome: 'Van', capacidade_passageiros: 6, qt_bagagem_pequena: 10, qt_bagagem_grande: 8)

# Popular Locadoras
Locadora.create(cnpj: 1111, nome: 'Locadora A', endereco_id: 1, responsavel: 'Chico', email: 'teste@teste', telefone: 123123)

# Popular veiculos
Veiculo.create(placa: 'HXB-3890', marca: 'FIAT', ano: 2009, modelo: 'UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1)
Veiculo.create(placa: 'HBB-4090', marca: 'Pegeout', ano: 2004, modelo: '204', cor: 'branco', valor_diaria: 250, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1)
Veiculo.create(placa: 'HZT-3890', marca: 'CITROEN', ano: 2010, modelo: 'RX-7', cor: 'preto', valor_diaria: 300, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1)
Veiculo.create(placa: 'HVB-4990', marca: 'FIAT', ano: 2009, modelo: 'NOVO UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1)
Veiculo.create(placa: 'HBO-3890', marca: 'WOLKSVAGEN', ano: 2005, modelo: 'GOL', cor: 'prata', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1)
Veiculo.create(placa: 'HXO-3399', marca: 'HONDA', ano: 2005, modelo: 'XL', cor: 'amarela', valor_diaria: 100, alugado: false, categoria_id: 2, garagem_id: 1, locadora_id: 1)








