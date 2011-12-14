class TarefasController < ApplicationController
  
  def novo
    
  end
  
  def create
    tarefa = Tarefa.new :projeto => params[:projeto], 
                        :responsavel => params[:responsavel], 
                        :descricao => params[:descricao]
    tarefa.save
  end
  
end
