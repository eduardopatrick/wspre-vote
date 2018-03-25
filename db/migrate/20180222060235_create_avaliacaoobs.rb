class CreateAvaliacaoobs < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliacaoobs do |t|
      t.string :comentario
      t.float :nota
      t.string :cpf
      t.string :email
      t.string :nome
      t.string :nomeobra
      t.string :orgao

      t.timestamps
    end
  end
end
