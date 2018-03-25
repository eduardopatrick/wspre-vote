class AddIdobraToAvaliacaoobs < ActiveRecord::Migration[5.1]
  def change
    add_column :avaliacaoobs, :idobra, :integer
  end
end
