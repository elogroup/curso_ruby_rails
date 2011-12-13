#enconding: utf-8
class Banco
  
  def contas
    @contas ||= []
    #@contas.clone.freeze 
    # aplica prog. defensiva na lista de contas voltando um clone inalterável
    # com a instrucao acima os comportamentos de incluir e remover conta serao comprometidos
    # para resolver vc vai precisar incluir novos metodos em banco que incluam e removam contas
  end
  
end