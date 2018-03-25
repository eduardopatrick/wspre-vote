class AddEmailToSeavaliacaos < ActiveRecord::Migration[5.1]
  def change
    add_column :seavaliacaos, :email, :string
  end
end
