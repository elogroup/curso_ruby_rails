#encoding: utf-8
class Banco
  attr_reader :contas

  def initialize
    @contas = []
  end

  def localiza(&criterio)
    resultado = nil
    if block_given?
      for conta in @contas
        resultado = conta if yield(conta)
      end
    end

    resultado
  end

  def localiza_conta_por_titular(nome)
    localiza{ |x| x.titular == nome }
  end

  def localiza_conta_por_numero(numero)
    localiza{ |i| i.numero == numero }
  end

  def localiza_conta_por_agencia(agencia)
    localiza{ |qualquer_coisa| qualquer_coisa.agencia == agencia}
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