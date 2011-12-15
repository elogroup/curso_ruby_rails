class Tarefa < ActiveRecord::Base
  belongs_to :projeto
  
  validates_presence_of :descricao, {:message => "Deve ser preenchido"}
  validates_size_of :descricao, :minimum => 20
  
end
