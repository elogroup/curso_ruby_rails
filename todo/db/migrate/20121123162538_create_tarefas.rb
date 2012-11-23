class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.text :descricao, :null => false
      t.string :responsavel
      t.timestamps
    end
  end
end
