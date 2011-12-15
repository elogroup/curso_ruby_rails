module TarefasHelper
  
  def nome_projeto(projeto)
    if projeto
      projeto.nome.capitalize
    else
      "Sem projeto"
    end    
  end
  
end
