class CreateSeavaliacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :seavaliacaos do |t|
      t.string :comentario
      t.float :nota
      t.string :cpf
      t.string :nomeservico
      t.string :orgao

      t.timestamps
    end
  end
end
