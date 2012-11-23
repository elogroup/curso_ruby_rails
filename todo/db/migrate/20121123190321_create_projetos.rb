class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
      t.date :data_entrega

      t.timestamps
    end
  end
end
