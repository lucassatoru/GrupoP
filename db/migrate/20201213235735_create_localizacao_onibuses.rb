class CreateLocalizacaoOnibuses < ActiveRecord::Migration[6.1]
  def change
    create_table :localizacao_onibuses do |t|
      t.integer :Usuario_Id
      t.string :Onibus_Id_Onibus, limit: 20
      t.string :Localizacao
      t.date :Data_2
      t.datetime :Hora

      t.timestamps
    end
  end
end
