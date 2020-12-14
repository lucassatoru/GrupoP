# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Onibus.delete_all
Onibus.create!(Id_Onibus: '8012-10', 
CodigoOnibus: '1',
Apelido: '8012',
Terminal_Partida: 'Metro Butanta',
Terminal_Chegada: 'Cid. Universitaria')
#...
Onibus.create!(Id_Onibus: '8022-10', 
CodigoOnibus: '2',
Apelido: '8022',
Terminal_Partida: 'Metro Butanta',
Terminal_Chegada: 'Cid. Universitaria')
#...
Onibus.create!(Id_Onibus: '177H-10', 
CodigoOnibus: '3',
Apelido: '177H',
Terminal_Partida: 'Metro Santana',
Terminal_Chegada: 'Cid. Universitaria')
#...
Onibus.create!(Id_Onibus: '701U-10', 
CodigoOnibus: '4',
Apelido: '701U',
Terminal_Partida: 'Metro Santana',
Terminal_Chegada: 'Cid. Universitaria')
#...
Onibus.create!(Id_Onibus: '702U-10', 
CodigoOnibus: '5',
Apelido: '702U',
Terminal_Partida: 'Cid. Universitaria',
Terminal_Chegada: 'Term. Pq. D. Pedro II')
#...
Onibus.create!(Id_Onibus: '7181-10', 
CodigoOnibus: '6',
Apelido: '7181',
Terminal_Partida: 'Cid. Universitaria',
Terminal_Chegada: 'Term. Princ. Isabel')
#...
Onibus.create!(Id_Onibus: '7411-10', 
CodigoOnibus: '7',
Apelido: '7411',
Terminal_Partida: 'Cid. Universitaria',
Terminal_Chegada: 'Pca. da Se')
#...
Onibus.create!(Id_Onibus: '809U-10', 
CodigoOnibus: '8',
Apelido: '809U',
Terminal_Partida: 'Cid. Universitaria',
Terminal_Chegada: 'Metro Barra Funda')