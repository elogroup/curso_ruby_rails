class Projeto < ActiveRecord::Base
  has_many :tarefas
  validates_presence_of :nome, :descricao
  
end
