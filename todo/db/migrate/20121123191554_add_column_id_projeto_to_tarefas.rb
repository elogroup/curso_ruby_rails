class AddColumnIdProjetoToTarefas < ActiveRecord::Migration
  def change
    add_column :tarefas, :projeto_id, :integer, null: false, default: 1
  end
end
