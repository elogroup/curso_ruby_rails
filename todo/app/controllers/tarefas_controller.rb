class TarefasController < ApplicationController
  
  def novo
    
  end
  
  def create
    tarefa = Tarefa.new params[:tarefa]
    tarefa.save
  end
  
end
