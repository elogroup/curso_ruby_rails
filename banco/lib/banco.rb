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












