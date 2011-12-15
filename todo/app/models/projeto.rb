class Projeto < ActiveRecord::Base
  has_many :tarefas
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_size_of :nome, :minimum => 3
  
  validate :letra_maiuscula_projeto
  
  private 
    def letra_maiuscula_projeto
      errors.add(:nome, "Primeira letra do nome deve ser maiuscula") unless nome =~ /^[A-Z]/
    end
  
end
