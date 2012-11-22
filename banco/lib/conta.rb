#encoding: utf-8
class Conta
  attr_accessor :titular
  attr_reader :saldo, :numero, :agencia

  def initialize(args = {})
    raise ArgumentError, "falta informar o numero da conta" if args[:numero].nil?
    raise ArgumentError, "falta informar a agencia da conta" if args[:agencia].nil?
    @numero = args[:numero]
    @agencia = args[:agencia]
    @titular = args[:titular]
    @saldo = 0
  end

  def deposita(valor)
    @saldo = @saldo + valor
  end

  def saca(valor)
    @saldo = @saldo - valor
  end

end
