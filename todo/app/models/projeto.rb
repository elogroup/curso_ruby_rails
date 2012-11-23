class Projeto < ActiveRecord::Base
  attr_accessible :nome, :data_entrega

  has_many :tarefas

  def self.by_name
    order('nome ASC')
  end
end
