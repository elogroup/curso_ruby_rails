class Tarefa < ActiveRecord::Base
  attr_accessible :descricao, :responsavel, :projeto_id
  belongs_to :projeto

  validates_presence_of :descricao, :message => "deve ser informada"
  validates_presence_of :projeto_id, :message => "falta informar o projeto"
  validates_associated :projeto

  def concluir!
    self.data_conclusao = DateTime.now
    self.save
  end

  def concluida?
    not self.data_conclusao.nil?
  end
end
