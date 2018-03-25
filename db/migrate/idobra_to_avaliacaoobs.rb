class AddidobraToAvaliacaoobs < ActiveRecord::Migration[5.1]
  def change
    add_column :avaliacaoobs, :idobra, :string
  end
end
