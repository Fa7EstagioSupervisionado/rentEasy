# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Usuarios
admin = User.create email: 'admin@email.com',  password: '12345678', password_confirmation: '12345678', role: 'admin'
cliente = User.create email: 'cliente@email.com',  password: '12345678', password_confirmation: '12345678', role: 'cliente'
locadora = User.create email: 'locadora@email.com',  password: '12345678', password_confirmation: '12345678', role: 'locadora'

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
Categoria.create(nome: '4x4', capacidade_passageiros: 4, qt_bagagem_pequena: 10, qt_bagagem_grande: 6)

# Popular Locadoras
Locadora.create(cnpj: 1111, nome: 'Locadora A', endereco_id: 1, responsavel: 'Chico', email: 'teste@teste', telefone: 123123)
Locadora.create(cnpj: 2211, nome: 'Locadora B', endereco_id: 2, responsavel: 'Jose', email: 'teste@testeteste', telefone: 1234123)

# Popular veiculos
Veiculo.create(placa: 'HXB-3890', marca: 'FIAT', ano: 2009, modelo: 'UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1, foto_file_name: "mille.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HBB-4090', marca: 'Pegeout', ano: 2004, modelo: '204', cor: 'branco', valor_diaria: 250, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1, foto_file_name: "p208.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HZT-3890', marca: 'CITROEN', ano: 2010, modelo: 'RX-7', cor: 'preto', valor_diaria: 300, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1, foto_file_name: "rx7.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HVB-4990', marca: 'FIAT', ano: 2009, modelo: 'NOVO UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1, foto_file_name: "novo_uno.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HBO-3890', marca: 'WOLKSVAGEN', ano: 2005, modelo: 'GOL', cor: 'prata', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 1, foto_file_name: "gol.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HXO-3399', marca: 'HONDA', ano: 2005, modelo: 'XL', cor: 'amarela', valor_diaria: 100, alugado: false, categoria_id: 2, garagem_id: 1, locadora_id: 1, foto_file_name: "honda_xl.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HXO-4323', marca: 'HYUNDAI', ano: 2001, modelo: 'HILUX', cor: 'grafite', valor_diaria: 500, alugado: false, categoria_id: 4, garagem_id: 1, locadora_id: 2, foto_file_name: "hilux.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HJO-4323', marca: 'WOLKSVAGEN', ano: 1995, modelo: 'KOMBI', cor: 'verde', valor_diaria: 500, alugado: false, categoria_id: 3, garagem_id: 1, locadora_id: 2, foto_file_name: "kombi.jpg", foto_content_type: "image/jpeg")






