#encoding: utf-8
class BancoError < Exception
end

class SaldoInsuficienteError < BancoError 
end