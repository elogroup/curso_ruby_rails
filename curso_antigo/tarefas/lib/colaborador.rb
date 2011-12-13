require 'active_record'

class Colaborador < ActiveRecord::Base
  set_table_name "colaboradores"
  has_many :tarefas
  has_and_belongs_to_many :projetos, :join_table => "colaboradores_projetos"
#  attr_accessor :nome #, :tarefas
#  attr_reader :tarefas, :projetos
#  def initialize
#    @tarefas = []
#    @projetos = []
#  end

end

