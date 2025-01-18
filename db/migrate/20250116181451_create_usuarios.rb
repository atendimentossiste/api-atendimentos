class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.decimal :numero
      t.boolean :tipo_de_envio

      t.timestamps
    end
  end
end
