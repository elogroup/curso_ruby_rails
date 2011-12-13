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
  
  private
    #daqui pra baixo tudo é privado
    def valida_presenca_de(valor, msg = "")
      raise(ArgumentError, msg) if valor.nil?
    end

end