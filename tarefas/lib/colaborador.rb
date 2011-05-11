class Colaborador
  attr_accessor :nome #, :tarefas
  attr_reader :tarefas
  def initialize
    @tarefas = []
  end
end

