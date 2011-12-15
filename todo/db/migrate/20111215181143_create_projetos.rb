class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
      t.date :data_entrega
      t.string :responsavel

      t.timestamps
    end
  end
end
