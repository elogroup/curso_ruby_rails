class AddProjetoIdToTarefas < ActiveRecord::Migration
  def up
    add_column :tarefas, :projeto_id, :integer
    Tarefa.all.each do |tarefa|
      if tarefa.projeto
        projeto = Projeto.find_or_create_by_nome tarefa.projeto.capitalize
        tarefa.projeto_id = projeto.id      
        tarefa.save
      end
    end
    remove_column :tarefas, :projeto
  end
  
  def down
    add_column :tarefas, :projeto, :string
    Tarefa.all.each do |tarefa|
      if tarefa.projeto_id
        p = Projeto.find tarefa.projeto_id
        tarefa.projeto = p.nome
        tarefa.save
      end
    end
    remove_column :tarefas, :projeto_id
  end
end
