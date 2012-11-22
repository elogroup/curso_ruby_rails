#encoding: utf-8
class Banco
  attr_reader :contas

  def initialize
    @contas = []
  end

  def respond_to?(name)
    if name =~ /localiza_conta_por_(.*)/
      atributo = $1
      instance_conta = Conta.new numero:10, agencia: 10
      instance_conta.respond_to?(atributo)
    else
      super
    end
  end

  def method_missing(name, *args, &block)
    # puts "vc chamou o metodo: #{name} como os argumentos #{args.inspect}"
    # puts "com o bloco: #{block.inspect}"
    if name =~ /localiza_conta_por_(.*)/
      atributo = $1
      valor = args.first
      localiza{|conta| conta.send(atributo) == valor }
    else
      super
    end
  end

private
  def localiza(&criterio)
    resultado = nil
    if block_given?
      for conta in @contas
        resultado = conta if yield(conta)
      end
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