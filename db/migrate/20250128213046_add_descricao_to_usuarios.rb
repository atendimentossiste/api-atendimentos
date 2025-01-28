class AddDescricaoToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :descricao, :string
  end
end
