class Tarefa < ActiveRecord::Base
  validates_presence_of :descricao, :projeto, {:message => "Deve ser preenchido"}
  validates_size_of :descricao, :minimum => 20
  
  validate :letra_maiuscula_projeto
  
  private 
    def letra_maiuscula_projeto
      errors.add(:projeto, "Primeira letra do projeto deve ser maiuscula") unless projeto =~ /^[A-Z]/
    end
end
