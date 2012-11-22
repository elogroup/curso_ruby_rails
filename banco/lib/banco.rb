#encoding: utf-8
class Banco
  attr_reader :contas

  def initialize
    @contas = []
  end

  def localiza_conta_por_titular(nome)
    resultado = nil
    for conta in @contas
      resultado = conta if conta.titular == nome
    end

    resultado
  end

  # os metodos abaixo seriam utilizados para fazer
  # programacao defensiva.

  # def contas
  #   @contas.freeze
  # end

  # def add_conta (item)

  # end

  # def remove_conta(item)

  # end

end