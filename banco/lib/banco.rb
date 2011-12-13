#encoding: utf-8
class Banco
  
  def contas
    @contas ||= []
    #@contas.clone.freeze 
    # aplica prog. defensiva na lista de contas voltando um clone inalterável
    # com a instrucao acima os comportamentos de incluir e remover conta serao comprometidos
    # para resolver vc vai precisar incluir novos metodos em banco que incluam e removam contas
  end
  
  def localiza_conta_por_nome(nome)
    localiza_conta{|c| c.titular == nome }
  end
  
  def localiza_conta_por_numero(numero)
    localiza_conta{|c| c.numero == numero }      
  end

  #banco.procura_conta_por_saldo 200
  #banco.procura_conta_por_agencia 20
  def method_missing(name, *args, &block)
    if name =~ /localiza_conta_por_(.*)/ 
      attribute = $1
      value = args.first
      localiza_conta{|c| c.send(attribute) == value}
    else
      raise NoMethodError, "undefined method: " + name
    end
  end
  
  private
    def localiza_conta(&criterio)
      for conta in @contas
        if yield(conta)
          return conta
        end
      end
      nil
    end
  
  
end












