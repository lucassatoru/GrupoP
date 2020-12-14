class CreateOnibuses < ActiveRecord::Migration[6.1]
  def change
    create_table :onibuses do |t|
      t.string :Id_Onibus, limit: 20
      t.string :Apelido
      t.string :Terminal_Partida
      t.string :Terminal_Chegada
      t.integer :CodigoOnibus

      t.timestamps
    end
  end
end
