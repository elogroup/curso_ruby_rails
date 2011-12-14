class Tarefa < ActiveRecord::Base
  validates_presence_of :descricao, :projeto, {:message => "Deve ser preenchido"}
end
