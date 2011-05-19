class Projeto < ActiveRecord::Base
  has_many :tarefas
  
  has_many :tarefas_para_fazer,
           :class_name => 'Tarefa',
           :conditions => ['colaborador_id is null AND data_finalizacao is null']
  
  has_many :tarefas_finalizadas,
           :class_name => 'Tarefa',
           :conditions => ['data_finalizacao is not null'] 
  
  has_many :tarefas_em_andamento,
           :class_name => 'Tarefa',
           :conditions => ['colaborador_id is not null AND data_finalizacao is null']      
  
  
  validates_presence_of :nome, :descricao
  
  # Substituindo pelos has_many acima!
  #-----------------------------------
  # def tarefas_sem_responsavel
  #     Tarefa.where('projeto_id = ? AND colaborador_id is null', self.id)
  #   end
  #  
  # def tarefas_em_andamento
  #   Tarefa.where('projeto_id = ? AND data_finalizacao is null', self.id)
  # end
  #   
  # def tarefas_finalizadas
  #   Tarefa.where('projeto_id = ? AND data_finalizacao is not null', self.id)
  # end
end
