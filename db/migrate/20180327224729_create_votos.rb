class CreateVotos < ActiveRecord::Migration[5.1]
  def change
    create_table :votos do |t|
      t.boolean :vote

      t.timestamps
    end
  end
end
