class AddEmailAndSenhaToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :email, :string
    add_column :usuarios, :senha, :string
  end
end
