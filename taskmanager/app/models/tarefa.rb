class Tarefa < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :responsavel, :class_name => 'Colaborador', :foreign_key => 'colaborador_id'
end
