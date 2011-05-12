class Tarefa < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :responsavel, :class_name => "Colaborador"
end

