class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.text :descricao
      t.date :data_finalizacao
      t.string :responsavel
      t.string :projeto
      t.timestamps
    end
  end
end
