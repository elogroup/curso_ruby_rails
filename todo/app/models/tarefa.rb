class Tarefa < ActiveRecord::Base
  attr_accessible :descricao, :responsavel

  validates_presence_of :descricao, :message => "deve ser informada"
end
