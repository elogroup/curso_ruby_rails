#encoding: utf-8
class Conta
  attr_accessor :titular
  attr_reader :saldo, :numero, :agencia
  
  def initialize(attributes = {})
    default = {:saldo => 0}
    attributes = default.merge(attributes)
    
    valida_presenca_de attributes[:numero], "falta informar o numero da conta"
    valida_presenca_de attributes[:agencia], "falta informar a agencia da conta"
    
    @numero = attributes[:numero]
    @agencia = attributes[:agencia]
    @saldo = attributes[:saldo]
    @titular = attributes[:titular]
  end
  
  def deposita(valor)
    raise ArgumentError, "Valores negativos não podem ser usados para depósito" if valor < 0
    @saldo += valor
  end
  
  def saca(valor)
    raise ArgumentError, "Apenas valores maiores que zero podem ser sacados" if valor < 0
    raise SaldoInsuficienteError, "Saldo insuficiente" if valor > @saldo
    @saldo -= valor
  end
  
  def transfere(valor,destino)
    saca(valor)
    destino.deposita(valor)
  end
  
  private
    #daqui pra baixo tudo é privado
    def valida_presenca_de(valor, msg = "")
      raise(ArgumentError, msg) if valor.nil?
    end

end