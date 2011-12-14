class TarefasController < ApplicationController
  
  def novo
    @tarefa = Tarefa.new
  end
  
  def create
    @tarefa = Tarefa.new params[:tarefa]
    if !@tarefa.save
      render :action => :novo
    end
  end
  
end
