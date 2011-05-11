class Projeto
#Porrada de Getters e Setters... pqp!
#  def nome=(nome) #Get
#    @nome = nome
#  end
#  def nome #Set
#    @nome
#  end
#  def descricao=(descricao) #Get
#    @descricao = descricao
#  end
#  def descricao #Set
#    @descricao
#  end
#  def dt_inicio=(dt_inicio) #Get
#    @descricao = dt_inicio
#  end
#  def dt_inicio #Set
#    @dt_inicio
#  end

  attr_accessor :nome, :descricao #, :dt_inicio, :dt_finalizacao
  attr_reader :dt_inicio, :dt_finalizacao, :tarefas, :colaboradores
  def initialize
    @tarefas = []
    @colaboradores = []
  end

  def iniciar
    @dt_inicio = Time.now
  end

  def finalizar
    @dt_finalizacao = Time.now
  end
end

