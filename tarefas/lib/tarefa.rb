class Tarefa
  attr_accessor :descricao, :responsavel, :projeto
  attr_reader :dt_finalizacao
  def initialize(args={})
    if not args[:projeto]
      raise ArgumentError, "Falta informar o projeto da tarefa"
    else
      @projeto = args[:projeto]
    end
    @descricao = args[:descricao]
  end

  def finalizar
    @dt_finalizacao = Time.now
  end
end

