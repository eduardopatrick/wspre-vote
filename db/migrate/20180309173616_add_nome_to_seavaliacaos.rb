class AddNomeToSeavaliacaos < ActiveRecord::Migration[5.1]
  def change
    add_column :seavaliacaos, :nome, :string
  end
end
