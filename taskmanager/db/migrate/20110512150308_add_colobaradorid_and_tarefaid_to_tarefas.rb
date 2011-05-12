class AddColobaradoridAndTarefaidToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :colaborador_id, :integer
    add_column :tarefas, :projeto_id, :integer
    add_index :tarefas, :colaborador_id
    add_index :tarefas, :projeto_id
  end

  def self.down
    remove_column :tarefas, :colaborador_id
    remove_column :tarefas, :projeto_id
    remove_index :tarefas, :colaborador_id
    remove_index :tarefas, :projeto_id
  end
end

